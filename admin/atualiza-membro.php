<?php 

require_once "models/Membros.php";

$objMembro = new Membros();

// print_r($_POST); exit;

$aDadosMembro = array(
	'idMembro' => $_POST['idmembroU'],
	'nomeMembro' => $_POST['nomemembroU'],
	'userMembro' => $_POST['usuariomembroU'],
	'anoFusca' => $_POST['anofuscaU']
);



echo $objMembro->atualizarMembro($aDadosMembro);




