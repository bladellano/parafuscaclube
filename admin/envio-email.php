<?php

$myinputs = filter_input_array(INPUT_POST,FILTER_DEFAULT);

if(isset($myinputs['g-recaptcha-response'])){

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
			 //Variaveis de POST, Alterar somente se necessário 
			 //====================================================
		$nome = $myinputs['nome'];
		$email = $myinputs['email'];
		$telefone = $myinputs['telefone']; 
		$mensagem = $myinputs['mensagem'];

			 //====================================================
			 //REMETENTE --> ESTE EMAIL TEM QUE SER VALIDO DO DOMINIO
			 //==================================================== 
			 $email_remetente = "parafusc@parafuscaclube.com.br"; // deve ser uma conta de email do seu dominio 
			 //====================================================
			 
			 //Configurações do email, ajustar conforme necessidade
			 //==================================================== 
			 $email_destinatario = "bladellano@gmail.com"; // pode ser qualquer email que receberá as mensagens
			 $email_reply = "$email"; 
			 $email_assunto = "Contato através do Site"; // Este será o assunto da mensagem
			 //====================================================
			 
			 //Monta o Corpo da Mensagem
			 //====================================================
			 $email_conteudo = "Nome: $nome \n"; 
			 $email_conteudo .= "Email: $email \n";
			 $email_conteudo .= "Telefone: $telefone \n"; 
			 $email_conteudo .= "Mensagem: $mensagem \n"; 
			 //====================================================
			 
			 //Seta os Headers (Alterar somente caso necessario) 
			 //==================================================== 
			 $email_headers = implode ( "\n",array ( "From: $email_remetente", "Reply-To: $email_reply", "Return-Path: $email_remetente","MIME-Version: 1.0","X-Priority: 3","Content-Type: text/html; charset=UTF-8" ) );
			 //====================================================

			 //Enviando o email 
			 //==================================================== 
			 if (mail($email_destinatario, $email_assunto, nl2br($email_conteudo), $email_headers) ){ 
			 // echo "</b>E-Mail enviado com sucesso!</b>"; 
			 	echo 1;
			 } 
			 else { 
			 // echo "</b>Falha no envio do E-Mail!</b>";  
			 	die('0'); // Falha no envio do E-Mail!
			 //====================================================
			 } 


			} else {

			die('0'); // Sem sucesso no envio.

		}

	} else {

		die('0'); // Não marcou o captcha.
	}



