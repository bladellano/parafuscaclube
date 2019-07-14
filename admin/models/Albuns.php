<?php 

require_once "Conexao.php";

class Albuns extends Conexao {

	protected $nome_album;
	
	public function __construct(){
		parent::__construct('tb_albuns');
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
		$sql  = "SELECT * FROM tb_albuns ORDER BY dataCaptura ASC";
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

		$sql  = "SELECT * FROM tb_albuns WHERE idAlbum = $id";
		return $this->db->query($sql)->fetch(PDO::FETCH_OBJ);	
	}

}//fim classe

// $foto = new Fotos();
// echo $foto->selecionarFoto(50)->urlFoto;
// $foto->excluirFoto(16);