<?php 

require_once "models/Login.php";

$objUsuario = new Login();

$dados = array(
	$id = $_REQUEST['inputEmail'],
	$titulo = sha1( $_REQUEST['inputPassword'] )
);

 echo $objUsuario->getIdUsuario($dados);


?>