<?php 

require_once "models/Membros.php";

$objMembro = new Membros();

$aDadosMembro = array(
	'idMembro' => $_POST['idmembroU'],
	'nomeMembro' => $_POST['nomemembroU'],
	'userMembro' => $_POST['usuariomembroU'],
	'anoFusca' => $_POST['anofuscaU'],
	'email' => $_POST['email'],
	'telefone' => $_POST['telefone'],
	'endereco' => $_POST['endereco']
);

echo $objMembro->atualizarMembro($aDadosMembro);




