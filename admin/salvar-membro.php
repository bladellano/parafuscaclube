<?php 

require_once "models/Membros.php";

$objMembro = new Membros();

if(isset($_POST['email'])) { // Verificar se houve envio do campo e-mail.	
  $aWheres[] = "email = '".$_POST['email']."'";
  if(is_array($objMembro->selecionarMembro($aWheres))) die('2'); // Verifica se já existe um e-mail cadastrado.
}


if(isset($_POST['g-recaptcha-response'])):

	$url = "https://www.google.com/recaptcha/api/siteverify";
	$respon = $_POST['g-recaptcha-response'];
	$data = array('secret' => "6LeDa7IUAAAAAMBnIvoo7RGs4u5R3UALpGvy9Buh", 'response' => $respon);

	$options = array(
		'http' => array(
			'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
			'method'  => 'POST',
			'content' => http_build_query($data)

		)
	);
	$context  = stream_context_create($options);
	$result = file_get_contents($url, false, $context);
	$jsom = json_decode($result);

	if ($jsom->success) {

		$aName = explode(" ",$_POST['nome_completo']);

		$userName = strtolower( $aName[0].".".$aName[1] );

		$aDadosMembro = array(
			"nome_membro" => addslashes( $_POST['nome_completo'] ),
			"email" => addslashes($_POST['email']), 
			"endereco" => addslashes($_POST['endereco']), 
			"telefone" => addslashes($_POST['telefone']), 
			"user_membro" => addslashes( $userName ),
			"pass_membro" => "",
			"ano_fusca" => intval($_POST['ano_fusca']), 
		);

		die($objMembro->salvarMembro($aDadosMembro));

	} else {

			die('0'); // Sem sucesso
		}

	else:	

		$aDadosMembro = array(
			"nome_membro" => addslashes( $_POST['nomeMembro'] ),
			"email" => "",
			"endereco" => "",
			"telefone" => "",
			"user_membro" => addslashes( $_POST['userMembro'] ),
			"pass_membro" => sha1( $_POST['passMembro'] ),
			"ano_fusca" => intval($_POST['anoFusca'])

		);

		$aDadosFoto = array(
			'arquivo_name' => $_FILES['arquivo']['name'][0],
			'arquivo_tmp_name' => $_FILES['arquivo']['tmp_name'][0],
			'arquivo_type' => $_FILES['arquivo']['type'][0]
		);

		echo $objMembro->salvarMembro($aDadosMembro, $aDadosFoto);

	endif;









