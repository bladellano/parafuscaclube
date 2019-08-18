<?php 

require_once "models/Albuns.php";

$objAlbum = new Albuns();

$nome_album = $_POST['nomeAlbum'];

echo $objAlbum->salvarAlbum($nome_album);




