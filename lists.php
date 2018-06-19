<title>List</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	a {text-decoration: none;}
</style>

<!-- xoa id -->
<script language="JavaScript" type="text/javascript">
  function unlink(id, title)
    {
      if (confirm("Bạn có muốn xóa id '" + title + "'"))
    {
      window.location.href = '?unlink=' + id;
    }
  }
</script>

<?php

// unlink
if (isset($_GET['unlink'])) {
	unlink($_GET['unlink']);
	header('Location: lists.php');
	exit;
}
?>

<h3><a href="/truyencv"><font color="black">Truyện CV</font></a></h3>
<?php
$fileList = glob('truyencv/saves/*.html');
foreach($fileList as $filename){
    //Use the is_file function to make sure that it is not a directory.
    if(is_file($filename)){ ?>
        <a href="javascript:unlink('<?= $filename ?>','<?= $filename ?>')"><font color="red">✘</font></a> <a href="<?= $filename ?>"><?= ucwords(str_replace(array('truyencv/saves/', '.html', '-'), array('', '', ' '), $filename)) ?></a><br>
    <?php }
} ?>
<hr>

<h3><a href="/tangthuvien"><font color="black">Tàng thư viện</font></a></h3>
<?php
$fileList = glob('tangthuvien/saves/*.html');
foreach($fileList as $filename){
    //Use the is_file function to make sure that it is not a directory.
    if(is_file($filename)){ ?>
        <a href="javascript:unlink('<?= $filename ?>','<?= $filename ?>')"><font color="red">✘</font></a> <a href="<?= $filename ?>"><?= ucwords(str_replace(array('tangthuvien/saves/', '.html', '-'), array('', '', ' '), $filename)) ?></a><br>
    <?php }
} ?>
<hr>

<h3><a href="/truyenfull"><font color="black">Truyện full</font></a></h3>
<?php
$fileList = glob('truyenfull/saves/*.html');
foreach($fileList as $filename){
    //Use the is_file function to make sure that it is not a directory.
    if(is_file($filename)){ ?>
        <a href="javascript:unlink('<?= $filename ?>','<?= $filename ?>')"><font color="red">✘</font></a> <a href="<?= $filename ?>"><?= ucwords(str_replace(array('truyenfull/saves/', '.html', '-'), array('', '', ' '), $filename)) ?></a><br>
    <?php }
} ?>
<hr>

<h3><a href="/webtruyen"><font color="black">Web truyện</font></a></h3>
<?php
$fileList = glob('webtruyen/saves/*.html');
foreach($fileList as $filename){
    //Use the is_file function to make sure that it is not a directory.
    if(is_file($filename)){ ?>
        <a href="javascript:unlink('<?= $filename ?>','<?= $filename ?>')"><font color="red">✘</font></a> <a href="<?= $filename ?>"><?= ucwords(str_replace(array('webtruyen/saves/', '.html', '-'), array('', '', ' '), $filename)) ?></a><br>
    <?php }
} ?>
<hr>

<h3><a href="/isach"><font color="black">I SÁCH</font></a></h3>
<?php
$fileList = glob('isach/saves/*.html');
foreach($fileList as $filename){
    //Use the is_file function to make sure that it is not a directory.
    if(is_file($filename)){ ?>
    	<a href="javascript:unlink('<?= $filename ?>','<?= $filename ?>')"><font color="red">✘</font></a> <a href="<?= $filename ?>"><?= ucwords(str_replace(array('isach/saves/', '.html', '-'), array('', '', ' '), $filename)) ?></a><br>
    <?php }
} ?>

