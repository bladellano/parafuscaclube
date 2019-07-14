<?php 

require_once "models/Fotos.php";

$idFoto = $_POST['id'];
$foto = new Fotos();
echo $foto->excluirFoto($idFoto);
 

