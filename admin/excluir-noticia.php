<?php 

require_once "models/Noticias.php";

$objNoticia = new Noticias();

echo $objNoticia->excluirNoticia($_POST['id']);


