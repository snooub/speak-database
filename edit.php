<?php include 'func.php'; ?>
<?php

if(isset($_POST['submit'])){

  extract($_POST);


  if(!($s)){
    $error = 'Chưa nhập nội dung.';
  }

  if(!isset($error)){

    $stmt = $db->prepare('UPDATE rep SET s = :s, r = :r WHERE id = :id') ;
    $stmt->execute(array(
      'id' => $id,
      ':s' => $s,
      ':r' => $r
    ));

    
    $stmt = $db->prepare('SELECT site FROM rep WHERE id = :id');
    $stmt->execute(array(':id' => $id));
    $reps = $stmt->fetch(PDO::FETCH_ASSOC);

    $stmt = $db->prepare('SELECT name FROM site WHERE id = :id');
    $stmt->execute(array(':id' => $reps['site']));
    $sites = $stmt->fetch(PDO::FETCH_ASSOC);

    header('Location: site.php?name='.$sites['name']);
  }

}

?>
<title>Sửa</title>
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

<?php

	$stmt = $db->prepare('SELECT * FROM rep WHERE id = :id') ;
	$stmt->execute(array(':id' => $_GET['id']));
	$row = $stmt->fetch(); 

?>

<form action="edit.php?id=<?= $row['id'] ?>" method="post">
<input type='hidden' name='id' value='<?= $row['id'] ?>'>
<textarea name="s" style="width:98%;"><?php if(isset($error)) { echo $_POST['s']; } else { echo $row['s']; }?></textarea>
<textarea name="r" style="width:98%;"><?php if(isset($error)) { echo $_POST['r']; } else { echo $row['r']; }?></textarea>
<input type="submit" name="submit" value="Sửa">
</form>