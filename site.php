<?php include 'func.php'; ?>
<?php

if(isset($_POST['submit'])){

  // Nhận mảng
  extract($_POST);

  // Kiểm tra lỗi
  if(!($s)){
    $error = 'Chưa nhập nội dung.';
  }

  // Chèn dữ liệu
  if(!isset($error)){

        $stmt = $db->prepare('INSERT INTO rep (s, r, site) VALUES (:s, :r, :site)') ;
        $stmt->execute(array(
          ':s' => $s,
          ':r' => $r,
          ':site' => $site
        ));

        $id = $db->lastInsertId();
        
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
<?php

// xóa trang
if(isset($_GET['xoa_trang'])){ 

  $stmt = $db->prepare('DELETE FROM site WHERE id = :id') ;
  $stmt->execute(array(':id' => $_GET['xoa_trang']));

  $stmt = $db->prepare('DELETE FROM rep WHERE site = :site') ;
  $stmt->execute(array(':site' => $_GET['xoa_trang']));


  header('Location: index.php');
  exit;

} 

// xóa code
if(isset($_GET['xoa_code'])){ 

  $stmt = $db->prepare('DELETE FROM rep WHERE site = :site') ;
  $stmt->execute(array(':site' => $_GET['xoa_code']));

  $stmt = $db->prepare('SELECT name FROM site WHERE id = :id');
  $stmt->execute(array(':id' => $_GET['xoa_code']));
  $site = $stmt->fetch(PDO::FETCH_ASSOC);


  header('Location: site.php?name='.$site['name']);
  exit;

}

// xóa id
if(isset($_GET['xoa_id'])){ 

  $stmt = $db->prepare('SELECT * FROM rep WHERE id = :id');
  $stmt->execute(array(':id' => $_GET['xoa_id']));
  $rep = $stmt->fetch(PDO::FETCH_ASSOC);

  $stmt = $db->prepare('DELETE FROM rep WHERE id = :id') ;
  $stmt->execute(array(':id' => $rep['id']));

  $stmt = $db->prepare('SELECT name FROM site WHERE id = :id');
  $stmt->execute(array(':id' => $rep['site']));
  $site = $stmt->fetch(PDO::FETCH_ASSOC);
  
  header('Location: site.php?name='.$site['name']);
  exit;

} 


// Lấy dữ liệu
$stmt = $db->prepare('SELECT * FROM site WHERE name = :name');
$stmt->execute(array(':name' => $_GET['name']));
$site = $stmt->fetch(PDO::FETCH_ASSOC);

$stmt = $db->prepare('SELECT * FROM rep WHERE site = :site ORDER BY id ASC');
$stmt->execute(array(':site' => $site['id']));
$rep = $stmt->fetchAll(PDO::FETCH_ASSOC);

if (!($site['id'])){
  echo 'site không tồn tại!';
  exit;
}

?>
<title><?php echo $site['name']; ?> [site]</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
  a {text-decoration: none;}
</style>

<!-- xoa trang -->
<script language="JavaScript" type="text/javascript">
  function xoa_trang(id, title)
    {
      if (confirm("Bạn có muốn xóa trang '" + title + "'"))
    {
      window.location.href = 'site.php?xoa_trang=' + id;
    }
  }
</script>

<!-- xoa code -->
<script language="JavaScript" type="text/javascript">
  function xoa_code(id, title)
    {
      if (confirm("Bạn có muốn xóa code '" + title + "'"))
    {
      window.location.href = 'site.php?xoa_code=' + id;
    }
  }
</script>

<!-- xoa id -->
<script language="JavaScript" type="text/javascript">
  function xoa_id(id, title)
    {
      if (confirm("Bạn có muốn xóa id '" + title + "'"))
    {
      window.location.href = 'site.php?xoa_id=' + id;
    }
  }
</script>

<?php

// kiểm tra lỗi
if(isset($error)){
	echo '<p>'.$error.'</p>';
}

?>

<form action="site.php?name=<?= $site['name'] ?>" method="post">
<input type='hidden' name='site' value='<?= $site['id'] ?>'>
<textarea name="s" style="width:98%;"></textarea>
<textarea name="r" style="width:98%;"></textarea>
<input type="submit" name="submit" value="Replace">
</form>
<p>p/s: sử dụng preg_replace regex flags ##is</p>

<h3><?= $site['name'];?></h3>
<a href="javascript:xoa_trang('<?= $site['id'];?>','<?= $site['name'];?>')">Xóa site</a> | <a href="javascript:xoa_code('<?= $site['id'];?>','<?= $site['name'];?>')">Xóa code</a><hr>

<?php
foreach ($rep as $row) {
	$r = str_replace(' ', '▂', $row['r']);
	$s = str_replace(' ', '▂', $row['s']);
	?>
	<pre>[<b><?= $row['id'] ?></b>] <?= htmlspecialchars($s) ?> <font color="red">=></font> <?= (($row['r'] != null) ? htmlspecialchars($r) : 'null') ?> [<a href="edit.php?id=<?= $row['id'] ?>">sửa</a> | <a href="javascript:xoa_id('<?= $row['id'] ?>','<?= htmlspecialchars($s) ?>')">xóa</a>]</pre>
<?php } ?>