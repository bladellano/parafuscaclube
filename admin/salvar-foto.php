<?php 

require_once "models/Fotos.php";
require_once "models/Conexao.php";

$objFoto = new Fotos();

$titulo_foto = $_POST['tituloFoto'];
$id_album = $_POST['idAlbum'];

for ($i=0; $i < count($_FILES['arquivo']['name']) ; $i++) { 

	$objFoto->salvarFoto($titulo_foto, $_FILES['arquivo']['type'][$i], $_FILES['arquivo']['name'][$i], $_FILES['arquivo']['tmp_name'][$i], $id_album);

}

echo 1;

?>



