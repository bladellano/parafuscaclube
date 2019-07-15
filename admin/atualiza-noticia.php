<?php 

require_once "models/Noticias.php";

$objNoticia = new Noticias();

$id = $_POST['idNoticiaU'];
$titulo = $_POST['tituloNoticiaU'];
echo $objNoticia->atualizarNoticia($id,$titulo);




