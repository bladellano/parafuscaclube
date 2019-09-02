<?php 

require_once "models/Fotos.php";

$foto = new Fotos();

// print_r($_REQUEST); exit;

foreach ($_REQUEST['dados'] as $id) {

	if($foto->excluirFoto($id) == 0){
		die("0"); // Deu algum problema.
	}
}

echo 1; //Deu certo.

