<?php 

require_once "models/Noticias.php";

$objNoticia = new Noticias();

// print_r($_POST);

$id = $_POST['idnoticiaU'];
$titulo = $_POST['titulofotoU'];

echo $objNoticia->atualizarNoticia($id,$titulo);




