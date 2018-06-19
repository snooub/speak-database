<?php include 'func.php'; ?>
<?php

if(isset($_POST['submit'])){

  extract($_POST);


  if(!($name)){
    $error = 'Chưa nhập nội dung.';
  }

  // kiểm tra bài viết tồn tại
  $stmt = $db->prepare('SELECT name FROM site WHERE name = :name');
  $stmt->execute(array(':name' => slug($name) ));
  $row = $stmt->fetch(PDO::FETCH_ASSOC);

  if($stmt->rowCount() > 0) {
    $error = 'Bài viết đã tồn tại. <a href="site.php?name='.$row['name'].'" target="_blank">Kiểm tra</a>';
  }


  if(!isset($error)){

      $slug = slug($name);

        $stmt = $db->prepare('INSERT INTO site (name) VALUES (:name)') ;
        $stmt->execute(array(
          ':name' => $slug
        ));

       header('Location: site.php?name='.$slug);

  }

}

?>
<?php
// xóa hết
if(isset($_GET['drop'])){ 

  $stmt = $db->query('TRUNCATE TABLE site') ;
  $stmt = $db->query('TRUNCATE TABLE rep') ;

  header('Location: index.php');
  exit;

} 
?>
<?php

// Lấy dữ liệu
$stmt = $db->prepare('SELECT * FROM site ORDER BY id DESC');
$stmt->execute();
$rep = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>
<title>Speak</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
  a {text-decoration: none;}
</style>

<pre><a href="/lists.php">Lists</a> <a href="/note.php">Note</a> <a href="/bookmark.php">Bookmark</a> <a href="/saves.php">Saves</a> <a href="/info.php">Info</a> <a href="/multi.php">Multi</a></pre>

<hr>

<?php

// kiểm tra lỗi
if(isset($error)){
	echo '<p>'.$error.'</p>';
}

?>

<p><form action="index.php" method="post">
<input type="text" name="name">
<input type="submit" name="submit" value="Thêm site">
</form></p>

<?php

foreach ($rep as $row) {
  echo '<pre><b>['.$row['id'].']</b> <a href="site.php?name='.$row['name'].'">'.$row['name'].'</a></pre>';
}

?>