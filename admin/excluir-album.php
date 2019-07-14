<?php 

require_once "models/Albuns.php";

$objAlbum = new Albuns();
echo $objAlbum->excluirAlbum($_POST['id']);


