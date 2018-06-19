<?php

include_once('../func.php');

/* GET */
$story = $_GET['story'];
$chapter = $_GET['chapter'];

$html = curl('https://isach.info/story.php?story=' . $story . '&chapter=' . $chapter . '');


// title
preg_match_all('#<div class=\'ms_title\'(.*?)href(.*?)>(.*?)</a>#is', $html, $tit);

// chuong
preg_match_all('#<div class=\'ms_chapter\'>(.*?)</div>#is', $html, $chap);

// con
preg_match('#<div class=\'ms_text\'>(.*?)<div class=\'navigator_bottom\'>#is', $html, $page);

$c = str_replace(array("<div class='ms_text'>", "</div>"), array("<br><br>", ""), $page[1]);


$c = preg_replace('/  +/', ' ', $c);
$c = preg_replace('/\t/', '', $c);
$c = preg_replace('/\n/', '<br />', $c);
$c = preg_replace('/<br\s*\/?>(?:\s*<br\s*\/?>)+/', '<br /><br />', $c);
$c = preg_replace('/-(.)/', '- $1', $c);

//fix func
$c = filter(text($c));

$c = preg_replace('/>\s?\.\.\.\s?</', '>•••<', $c);

$c = str_replace(array('&quot;', '&lsquo;', '&rsquo;', '&ldquo;', '&rdquo;', '“', '”'), '"', $c);
$c = str_replace('"..."', '"Lặng!"', $c);

//$c = str_replace(array('-', '+', '@', '*', '&', '{', '}', '|', '\\', '/', '~'), '', $c);
//$c = str_replace(array('(', ')'), array('〈', '〉'), $c);
$c = preg_replace('/\([0-9]{1,2}\)/', '', $c);


$c = preg_replace('/\.{1,3},?\s?("|\')\.?,?!?\??\s?</', '…$1<', $c);
$c = preg_replace('/\?,?\s?("|\')\.?,?!?\??\s?</', 'ʔ$1<', $c);
$c = preg_replace('/\!,?\s?("|\')\.?,?!?\??\s?</', 'ǃ$1<', $c);

$c = preg_replace('/(\?|\.|!|,|ʔ|ǃ|…)(\?|\.|!|,|ʔ|ǃ|…)\"\s?</', '$2"<', $c);
$c = preg_replace('/(\.|\?|!)("|\')\.?,?!?/', '$1$2', $c);
$c = preg_replace('/\s"\s</', '"<', $c);

$c = preg_replace('/;\s?"\s?</', '"<', $c);
$c = preg_replace('/" ?"/', '', $c);

//$c = preg_replace('/(\w)\.\.\.(\w)/', '$1 $2', $c);
$c = preg_replace('/([0-9]{1,3}),?\s?([0-9]{3})/', '$1.$2', $c);
$c = preg_replace('/([0-9]{1,2})~([0-9]{1,2})/', '$1-$2', $c);


//thay doi noi dung
$stmt = $db->prepare('SELECT * FROM site WHERE name = :name');
$stmt->execute(array(':name' => $_GET['name']));
$site = $stmt->fetch(PDO::FETCH_ASSOC);

$stmt = $db->prepare('SELECT * FROM rep WHERE site = :site');
$stmt->execute(array(':site' => $site['id']));
$row = $stmt->fetchAll(PDO::FETCH_ASSOC);


foreach ($row as $post) {
	$c = preg_replace('#'.$post['s'].'#is', $post['r'], $c);
}


/* Show c */
if(isset($_GET['str'])) {
	echo mb_strlen($c, 'UTF-8');
	exit;
}

$title[1] = preg_replace('/Chương 0([1-9]{1})/', 'Chương $1', $title[1]);
echo '<title>'.$tit[3][0].'</title>';
echo '<meta charset="UTF-8">';
echo '<meta name="viewport" content="width=device-width, initial-scale=1.0">';
echo filter(text($tit[3][0]));
echo '<br>➥<br>';
echo filter(text($chap[1][7]));
echo '<br>➥<br>➥<br><br>';
echo strip_tags($c, '<br>');
echo '<br>⊙⊙';