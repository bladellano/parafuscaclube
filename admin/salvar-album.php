<?php 

require_once "models/Albuns.php";

$objAlbum = new Albuns();

// print_r($_REQUEST);

$nome_album = $_POST['nomeAlbum'];

echo $objAlbum->salvarAlbum($nome_album);




