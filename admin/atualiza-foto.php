<?php 

require_once "models/Fotos.php";

$objFoto = new Fotos();

$id = $_POST['idfotoU'];
$titulo = $_POST['titulofotoU'];

echo $objFoto->atualizarFoto($id,$titulo);




