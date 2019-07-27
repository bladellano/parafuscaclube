<?php 

require_once "models/Membros.php";

$objMembro = new Membros();

$id = $_POST['id'];

echo $objMembro->excluirMembro($id);


