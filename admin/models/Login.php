<?php 

require_once "Conexao.php";

class Login extends Conexao {

	public function getIdUsuario($dados){

		// print_r($dados); exit;

		// Array ( [0] => bladellano@gmail.com [1] => 40bd001563085fc35165329ea1ff5c5ecbdbbeef ) 

		$sql  = "SELECT idUsuario FROM tb_usuarios  WHERE email = ? AND password = ?";
		$stmt = $this->db->prepare($sql);
		$stmt->execute([$dados[0],$dados[1]]);
		$result = $stmt->fetch(PDO::FETCH_ASSOC);  

		return $result['idUsuario']; 
		// echo $result['idUsuario']; 

	}

}