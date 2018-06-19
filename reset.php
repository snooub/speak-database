<?php include 'func.php'; ?>
<?php

$stmt = $db->prepare('DELETE FROM site WHERE id = :id') ;
$stmt->execute(array(':id' => 1));

$stmt = $db->prepare('DELETE FROM rep WHERE site = :site') ;
$stmt->execute(array(':site' => 1));

$db->exec("INSERT INTO site (id, name) VALUES ('1', 'root')");

// Khai báo transaction
$db->beginTransaction();

// Lệnh MySQL thêm dữ liệu

$db->exec("INSERT INTO rep (id, s, r, site) VALUES ('1', '\\\s\\\s+', ' ', '1')");
$db->exec("INSERT INTO rep (id, s, r, site) VALUES ('2', '\"\\\s?(.*?)\\\s?\"\\\.?,?', '“$1”', '1')");
$db->exec("INSERT INTO rep (id, s, r, site) VALUES ('3', '\\\.\\\s+\\\.', '..', '1')");
$db->exec("INSERT INTO rep (id, s, r, site) VALUES ('4', '\\\.\\\s\\\.', '..', '1')");
$db->exec("INSERT INTO rep (id, s, r, site) VALUES ('5', '\\\.\\\.\\\.+', '...', '1')");
$db->exec("INSERT INTO rep (id, s, r, site) VALUES ('6', '>\\\s?\\\.\\\.\\\.\\\s?<', '>｡｡｡<', '1')");
$db->exec("INSERT INTO rep (id, s, r, site) VALUES ('7', '\\\s(,|\\\.|!|:|\\\?)', '$1', '1')");
//$db->exec("INSERT INTO rep (id, s, r, site) VALUES ('8', '(@|#|%|&|;|{|}|\\\[|\\\]|\\\(|\\\)|\\\\$|\\\*|\\\+)', '', '1')");

// Thực hiện thêm dữ liệu bằng lệnh commit()
$db->commit();

echo 'Oke';