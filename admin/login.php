<?php 

require_once "models/Login.php";

$objUsuario = new Login();

$dados = array(
	$_REQUEST['inputEmail'],
	sha1( $_REQUEST['inputPassword'] )
);

echo $objUsuario->getIdUsuario($dados);

?>