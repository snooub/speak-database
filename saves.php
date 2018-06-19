<?php

// nếu mẫu đã được gửi thì xử lý nó
if(isset($_POST['submit'])){

	// thu thập dữ liệu biểu mẫu
	extract($_POST);

	// Kiểm tra nội dung
	if (!preg_match('/(tangthuvien\.vn|truyenfull\.vn|webtruyen\.com|isach\.info)/', $link)){
		$error = 'error';
	}

	if(!isset($error)){

		if(preg_match('/tangthuvien/', $link)){
			$url = 'tangthuvien/save.php?link='.$link;
		}elseif(preg_match('/truyenfull/', $link)){
			$url = 'truyenfull/save.php?link='.$link;
		}elseif(preg_match('/webtruyen/', $link)){
			$url = 'webtruyen/save.php?link='.$link;
		}else{
			$url = 'isach/save.php?link='.$link;
		}

		header('Location: '.$url);

	}

}

?>
<title>Saves</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	a {text-decoration: none;}
</style>
<?php

// kiểm tra lỗi
if(isset($error)){
	echo '<p>'.$error.'</p>';
}

?>
<form action="saves.php" method="post">
	<input type="text" name="link" style="width:80%;">
	<input type="submit" name="submit" value="Save">
</form>