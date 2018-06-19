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

	$html = curl($link . '&chapter=0000');

	// title
	preg_match('#<title>(.*?)</title>#is', $html, $title);

	// slug
	preg_match('#cover/([a-z0-9_]+).jpg#is', $html, $slug);

	$slug[1] = preg_replace(array('/(.*)__(.*)/', '/_/'), array('$1', '-'), $slug[1]);

	// content
	preg_match_all('#<div id=\'c[0-9]{1,4}\' class=\'right_menu_item\'><a href=\'(.*?)\'>(.*?)<\/a><\/div>#is', $html, $pages);

	// save start
	ob_start();

	echo "<title>" . $title[1] . "</title>\n";
	echo "<meta charset='UTF-8'>\n";
	echo "<meta name='viewport' content='width=device-width, initial-scale=1.0'>\n";
	echo "<style>a{text-decoration: none;}</style>\n";

	for ($i = 0; $i < count($pages[1]); $i++) {
		echo '<a href="/bookmark.php?title=[IS]' . str_replace('-', ' ', $slug[1]) . ' ➧ ' . trim($pages[2][$i]) . '"><font color="black">[' . ($i+1) . ']</font></a> <a href="/isach/isach.php?name=' . $slug[1] . '&' . str_replace('story.php?', '', trim($pages[1][$i])) . '">' . trim($pages[2][$i]) . '</a>';
		echo "<hr />\n";
	}

	// save end html
	file_put_contents('saves/' . $slug[1] . '.html', ob_get_contents());

	header('Location: saves/' . $slug[1] . '.html');

}else{

	echo 'error!';

} /*end if*/