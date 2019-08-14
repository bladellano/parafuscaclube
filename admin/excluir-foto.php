<?php 

require_once "models/Fotos.php";

print_r($_REQUEST);
exit;
print_r($_REQUEST['dados']);

exit;

$idFoto = $_POST['id'];
$foto = new Fotos();
echo $foto->excluirFoto($idFoto);
 

