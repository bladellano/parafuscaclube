<?php 

require_once "models/Noticias.php";

$objNoticia = new Noticias();

$titulo_noticia = addslashes($_POST['tituloNoticia']);
$conteudo = addslashes($_POST['conteudo']);
$id_album = (int) $_POST['idAlbum'];
$id_video = (int) $_POST['idVideo'];
$tipo_noticia = addslashes($_POST['tipoNoticia']); 

$arquivo_name = $_FILES['arquivo']['name'][0];
$arquivo_tmp_name = $_FILES['arquivo']['tmp_name'][0];
$arquivo_type = $_FILES['arquivo']['type'][0];
 

$objNoticia->salvarNoticia($titulo_noticia,$conteudo, $arquivo_name, $arquivo_tmp_name, $arquivo_type, $id_album,$id_video,$tipo_noticia);

echo 1;

?>



