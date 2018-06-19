<?php include 'func.php'; ?>
<?php

if(isset($_POST['submit'])){

  extract($_POST);

  if($content ==''){
    $error = 'Chưa nhập nội dung.';
  }

  if(!isset($error)){

        $stmt = $db->prepare('INSERT INTO note (content) VALUES (:content)') ;
        $stmt->execute(array(
          ':content' => $content
        ));

  }

}

$stmt = $db->query('SELECT * FROM note ORDER BY id DESC');

// xóa trang
if(isset($_GET['xoa_id'])){ 

  $stmt = $db->prepare('DELETE FROM note WHERE id = :id') ;
  $stmt->execute(array(':id' => $_GET['xoa_id']));

  header('Location: note.php');
  exit;
} 

// xóa trang
if(isset($_GET['del'])){ 

  $stmt = $db->query('TRUNCATE TABLE note') ;

  header('Location: note.php');
  exit;
} 

?>
<title>Ghi chú</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
  a {text-decoration: none;}
</style>

<!-- xoa id -->
<script language="JavaScript" type="text/javascript">
  function xoa_id(id, title)
    {
      if (confirm("Bạn có muốn xóa id '" + title + "'"))
    {
      window.location.href = '?xoa_id=' + id;
    }
  }
</script>

<form action="note.php" method="post">
	<textarea name="content" style="width:98%;"></textarea>
	<input type="submit" name="submit" value="Viết" />
</form>

<?php
// kiểm tra lỗi
if(isset($error)){
  echo '<p>'.$error.'</p>';
}
?>

<?php while($row_post = $stmt->fetch()){ ?>

  <p><font color="red"><strong><a href="javascript:xoa_id('<?= $row_post['id'] ?>','<?= $row_post['id'] ?>')"><?= $row_post['id'] ?></a>.</strong></font> <?= htmlspecialchars($row_post['name']) ?> <?= nl2br(htmlspecialchars($row_post['content'])) ?></p><hr>

<?php } ?>