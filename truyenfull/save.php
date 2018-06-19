<?php

function curl($link) {
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $link);
curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36');
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_TIMEOUT, 300);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$result = curl_exec($ch);
curl_close($ch);
return $result;
}

// hàm get nhiều trang
function multi_curl($links) {
$mh = curl_multi_init();
foreach($links as $k => $link) {
$ch[$k] = curl_init();
curl_setopt($ch[$k], CURLOPT_URL, $link);
curl_setopt($ch[$k], CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36');
curl_setopt($ch[$k], CURLOPT_HEADER, 0);
curl_setopt($ch[$k], CURLOPT_TIMEOUT, 300);
curl_setopt($ch[$k], CURLOPT_RETURNTRANSFER, 1);
curl_multi_add_handle($mh, $ch[$k]);
}
$running = null;
do {
curl_multi_exec($mh, $running);
} while($running > 0);
foreach($links as $k => $link) {
$result[$k] = curl_multi_getcontent($ch[$k]);
curl_multi_remove_handle($mh, $ch[$k]);
}
curl_multi_close($mh);
return join('', $result);
}


if (isset($_GET['link'])){

	$link = $_GET['link'];
	$html = curl($link);

	// title
	preg_match('#<title>(.*?)</title>#is', $html, $title);

	// slug
	preg_match('#href="http://truyenfull.vn/([a-z0-9-]+)/"#is', $html, $slug);

	//tong
	if(!preg_match('#<ul class="pagination pagination-sm">#is', $html)){
		$last = '1';
	}else{
		if(preg_match('#Trang ([0-9]{1,3})">Cuối#is', $html)){
			preg_match('#Trang ([0-9]{1,3})">Cuối#is', $html, $tong);
			$last = $tong[1];
		}else{
			preg_match('#(.*)>([0-9]{1,3})</a></li><li>#is', $html, $tong);
			$last = $tong[2];
		}
	}


	// get multi pages
	for($i = 1; $i <= $last; $i++) $links[] = $link . 'trang-'.$i.'/';
	$page = multi_curl($links);

	$page = preg_replace('#(.*?)<h2>Danh sách chương</h2>(.*?)<h2>Bình luận truyện</h2>(.*?)#is', '$2', $page);
	preg_match_all('#<li><span class="glyphicon glyphicon-certificate"></span>(.*?)href="(.*?)"(.*?)</span></span>(.*?)</a></li>#is', $page, $pages);

	// save start
	ob_start();

	echo "<title>" . $title[1] . "</title>\n";
	echo "<meta charset='UTF-8'>\n";
	echo "<meta name='viewport' content='width=device-width, initial-scale=1.0'>\n";
	echo "<style>a{text-decoration: none;}</style>\n";

	for ($i = 0; $i < count($pages[2]); $i++) {
		echo '<a href="/bookmark.php?title=[TF]' . trim($title[1]) . ' ➧ Chương ' . trim($pages[4][$i]) . '"><font color="black">[' . ($i+1) . ']</font></a> <a href="/truyenfull/truyenfull.php?name=' . $slug[1] . '&link=' . trim($pages[2][$i]) . '">Chương ' . trim($pages[4][$i]) . '</a>';
		echo "<hr />\n";
	}

	// save end html
	file_put_contents('saves/' . $slug[1] . '.html', ob_get_contents());

	header('Location: saves/' . $slug[1] . '.html');

}else{ ?>

<title>Save</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	a {text-decoration: none;}
</style>
<form action="save.php" method="get">
	<input type="text" name="link" style="width:80%;">
	<input type="submit" value="Save" />
</form>

<?php } /*end if*/