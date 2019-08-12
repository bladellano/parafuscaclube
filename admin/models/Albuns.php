<?php 

require_once "Conexao.php";

class Albuns extends Conexao {

	protected $nome_album;

	const table = 'tb_albuns';

	
	public function __construct(){
		parent::__construct('tb_albuns');
	}

	public function atualizarAlbum($id, $titulo_album){

		$sql = "UPDATE ".self::table." SET nomeAlbum = ? WHERE idAlbum = ?";
		$result = $this->db->prepare($sql);
		$result->execute([$titulo_album, $id]);
		return $result->rowCount() > 0 ? true : false;	
	}

	public function salvarAlbum($nome_album){
		
		$this->nome_album = $nome_album ;

		try {

			$sql  = "INSERT INTO tb_albuns (nomeAlbum) VALUES (?)";
			$stmt = $this->db->prepare($sql);

			if(!$stmt->execute([$this->nome_album])){
				return false;
			} else {
				return true;
			}

		} catch (PDOException $e) {
			echo $e->getMessage();
		}

	}

	public function listarAlbuns(){
		$sql  = "SELECT * FROM tb_albuns ORDER BY dataCaptura DESC";
		return $this->db->query($sql)->fetchAll(PDO::FETCH_ASSOC);	
	}

	public function excluirAlbum($id){

		try {
			
			$sql = "DELETE FROM tb_albuns WHERE idAlbum = :id";
			$result =$this->db->prepare($sql);
			$result->execute([':id'=>$id]);

			return $result->rowCount() > 0? true:false;		

		} catch (PDOException $e) {

			echo $e->getMessage();
		}
	}

	public function selecionarAlbum($id){

		if($id != 0):

			$sql  = "SELECT * FROM tb_albuns WHERE idAlbum = $id";
			$stmt = $this->db->prepare($sql);
			$stmt->execute();
			$result = $stmt->fetch(PDO::FETCH_ASSOC);  

			return substr($result['nomeAlbum'],0,20)."...";

		endif;

		return '--';

	}

}//fim classe
