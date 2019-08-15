<?php 

require_once "models/Albuns.php";
require_once "models/Fotos.php";

$objAlbum = new Albuns();
$objFoto = new Fotos();

$aIdsFoto = $objFoto->listarFotos($_POST['id']);

foreach ($aIdsFoto as $idFoto) { // Excluindo as fotos do album.

	if($objFoto->excluirFoto($idFoto['idFoto']) == 0){
		die("0"); // Deu algum problema.
	}
}

echo $objAlbum->excluirAlbum($_POST['id']);
// echo 1;

