<?php include 'func.php'; ?>
<?php

if (isset($_GET['title'])){

  $title = $_GET['title'];

  if($title ==''){
    $error = 'error';
  }else{
    $stmt = $db->prepare('INSERT INTO bm (content) VALUES (:content)') ;
    $stmt->execute(array(
      ':content' => $title
    ));
    header('Location: /bookmark.php');
  }

}


// xóa trang
if(isset($_GET['xoa_id'])){ 

  $stmt = $db->prepare('DELETE FROM bm WHERE id = :id') ;
  $stmt->execute(array(':id' => $_GET['xoa_id']));

  header('Location: bookmark.php');
  exit;
} 

// rỗng trang
if(isset($_GET['rong'])){ 

  $stmt = $db->query('TRUNCATE TABLE bm') ;

  header('Location: bookmark.php');
  exit;
} 

// in nội dung
$stmt = $db->query('SELECT * FROM bm ORDER BY id DESC');

?>
<title>Bookmark</title>
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

<form action="bookmark.php" method="get">
  <textarea name="title" style="width:98%;"></textarea>
  <input type="submit" value="Viết" />
</form>

<?php

// kiểm tra lỗi
if(isset($error)){
  echo '<p>'.$error.'</p>';
}
?>

<?php while($row_post = $stmt->fetch()){ ?>

  <p><font color="red"><strong><a href="javascript:xoa_id('<?= $row_post['id'] ?>','<?= $row_post['content'] ?>')"><?= $row_post['id'] ?></a>.</strong></font> <?= nl2br(htmlspecialchars($row_post['content'])) ?></p><hr>

<?php } ?>