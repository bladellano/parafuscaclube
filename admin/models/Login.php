<?php 

require_once "Conexao.php";

class Login extends Conexao {

	public function getIdUsuario($dados){

		$sql  = "SELECT idUsuario FROM tb_usuarios  WHERE email = ? AND password = ?";
		$stmt = $this->db->prepare($sql);
		$stmt->execute([$dados[0],$dados[1]]);
		$result = $stmt->fetch(PDO::FETCH_ASSOC);  

		$count = $stmt->rowCount();

		echo $count;
		// return $result['idUsuario']; 
		// echo $result['idUsuario']; 
		// print_r($result);

	}

}