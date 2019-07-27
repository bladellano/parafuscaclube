<?php 

require_once "models/Membros.php";

$objMembro = new Membros();

$aDadosMembro = array(
"nome_membro" => addslashes( $_POST['nomeMembro'] ),
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




