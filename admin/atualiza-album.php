<?php 

require_once "models/Albuns.php";

$objAlbum = new Albuns();

$id = $_POST['idalbumU'];
$titulo = $_POST['nomealbumU'];

echo $objAlbum->atualizarAlbum($id,$titulo);




