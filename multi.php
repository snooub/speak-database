<?php

// hàm get một trang
function curl($link) {
	// Tạo mới một cURL
	$ch = curl_init();

	// Cấu hình cho cURL
	curl_setopt($ch, CURLOPT_URL, $link);
	curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36');
	curl_setopt($ch, CURLOPT_HEADER, 0);
	curl_setopt($ch, CURLOPT_TIMEOUT, 600);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

	// Thực thi cURL
	$result = curl_exec($ch);

	// Ngắt cURL, giải phóng
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
		curl_setopt($ch[$k], CURLOPT_TIMEOUT, 0);
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

//echo $_SERVER['HTTP_USER_AGENT']

$HOME = 'http://speak-speak.a3c1.starter-us-west-1.openshiftapps.com';

//echo curl_multi($array);

if (isset($_GET['link'])){
	$link = $_GET['link'];
	$s = $_GET['s'];
	$e = $_GET['e']+1;

	// lay tu 1 den 2
	preg_match('#\['.$s.'\](.*?)\['.$e.'\]#is', curl($link), $links);

	// lay link tu 1 den 2
	preg_match_all('#</a> <a href="(.*?)"#is', $links[1], $rows);

	$urls = array();
	foreach ($rows[1] as $e) {
		$urls[] = $HOME . trim($e);
	}

	$content = multi_curl($urls);
	$content = preg_replace('#⊙(.*?)➥#is', '…<br>…<br>…<br>', $content);

	echo $content;

}else{ ?>
<title>Multi</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	a {text-decoration: none;}
	#copy {
		margin-bottom: 25px;
	}
	.btn {
		display: inline-block;
		padding: 15px 25px;
		font-size: 24px;
		cursor: pointer;
		text-align: center;
		text-decoration: none;
		outline: none;
		color: #fff;
		background-color: #4CAF50;
		border: none;
		border-radius: 15px;
		box-shadow: 0 9px #999;
	}

	.btn:hover {background-color: #3e8e41}

	.btn:active {
		background-color: #3e8e41;
		box-shadow: 0 5px #666;
		transform: translateY(4px);
	}
</style>

<form action="multi.php#copy" method="post">
	<p>
		<select name="link">
		<?php

		$fileList = glob("{truyencv/saves/*.html,tangthuvien/saves/*.html,truyenfull/saves/*.html,isach/saves/*.html}",GLOB_BRACE);

		foreach($fileList as $filename)
		{
			$name = str_replace(array('truyencv/saves/', 'tangthuvien/saves/', 'truyenfull/saves/', 'isach/saves/', '.html', '-'), array('TCV ▸ ', 'TTV ▸ ', 'TF ▸ ', 'IS ▸ ', '', ' '), $filename);

			if($filename == $_POST['link'])
			{
				echo '<option value="'.$filename.'" selected>'.$name.'</option>';
			}
			else
			{
				echo '<option value="'.$filename.'">'.$name.'</option>';
			}
		}

		?>
		</select>
	</p>
	<p><input type="number" name="s" value="<?= $_POST['s']; ?>"></p>
	<p><input type="number" name="e" value="<?= $_POST['e']; ?>"></p>
	<input class="btn" type="submit" value="Get" />
</form>

<?php

	if(!empty($_POST['link'] && $_POST['s'] && $_POST['e'])){
		echo '<a href="' . $HOME . '/multi.php?link=' . $HOME . '/' . $_POST['link'] . '&s=' . $_POST['s'] . '&e=' . $_POST['e'] . '">' . $_POST['link'] . '&s=' . $_POST['s'] . '&e=' . $_POST['e'] . '</a>';
		echo "<hr>\n";
		echo '<button class="btn" data-clipboard-text="' . $HOME . '/multi.php?link=' . $HOME . '/' . $_POST['link'] . '&s=' . $_POST['s'] . '&e=' . $_POST['e'] . '">Copy</button><div id="copy"></div>';
	}
} /*end if*/ ?>

<script src="/clipboard.min.js"></script>
<script>
var clipboard = new ClipboardJS('.btn');

clipboard.on('success', function(e) {
	console.log(e);
});

clipboard.on('error', function(e) {
	console.log(e);
});
</script>
