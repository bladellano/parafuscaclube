<?php 

require_once "models/Noticias.php";

$objNoticia = new Noticias();

// print_r($_POST); exit;

echo $objNoticia->excluirNoticia($_POST['id']);


