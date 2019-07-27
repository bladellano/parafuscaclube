<?php 

require_once "models/Videos.php";

$objVideo = new Videos();

$id = $_POST['idvideoU'];
$titulo = $_POST['titulovideoU'];

echo $objVideo->atualizarVideo($id, $titulo);




