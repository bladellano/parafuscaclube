<?php 

session_start();

require_once "Conexao.php";

class Login extends Conexao {

	public function getIdUsuario($dados){

		$sql  = "SELECT idUsuario FROM tb_usuarios  WHERE email = ? AND password = ?";
		$stmt = $this->db->prepare($sql);
		$stmt->execute([$dados[0],$dados[1]]);
		$result = $stmt->fetch(PDO::FETCH_ASSOC);  

		$count = $stmt->rowCount();//Qtd de registro

		if($count > 0){

			$_SESSION['usuario'] = $dados[0];//e-mail
			$_SESSION['iduser'] = $result['idUsuario'];//idUsuario

			return $count;

		} else {

			return 0;
		}
	}

}