<?php

include 'func.php';

if(isset($_GET['site'])){
	$stmt = $db->query('TRUNCATE TABLE site') ;
	header('Location: index.php');
	exit;
}


if(isset($_GET['rep'])){
	$stmt = $db->query('TRUNCATE TABLE rep') ;
	header('Location: index.php');
	exit;
}


if(isset($_GET['bookmark'])){
	$stmt = $db->query('TRUNCATE TABLE bookmark') ;
	header('Location: index.php');
	exit;
}

if(isset($_GET['note'])){
	$stmt = $db->query('TRUNCATE TABLE note') ;
	header('Location: index.php');
	exit;
}

if(isset($_GET['drop'])){
	$stmt = $db->query('DROP TABLE bm, note, post, rep, site') ;
	header('Location: index.php');
	exit;
}
