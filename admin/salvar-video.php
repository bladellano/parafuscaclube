<?php 

require_once "models/Videos.php";

$objVideo = new Videos();

$tituloVideo = $_POST['tituloVideo'];
$codVideo = $_POST['codVideo'];
$urlVideo = $_POST['urlVideo'];

echo $objVideo->salvarVideo($tituloVideo, $codVideo, $urlVideo);




