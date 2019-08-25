 
<?php

$url = (isset($_GET["url"])) ? $_GET["url"] : false;
//echo $url; exit;

$url = array_filter(explode('/',$url));

$file = (isset($url[0])) ? $url[0].".php" : "home.php";

if(file_exists($file)){
	include '_header.php';
	include $file;
	include '_footer.php';
} else {
	include '_header.php';
	include '404.php';
	include '_footer.php';
}

?>
