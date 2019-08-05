<?php 

require_once "models/Noticias.php"; 

$objNoticia = new Noticias();

echo json_encode($objNoticia->selecionarNoticia((int)$_POST['id']));

?>