<?php 

require_once "Conexao.php";

class Fotos extends Conexao {

	protected $titulo_foto;
	protected $novo_nome;
	protected $extensao;

	const pasta = "upload/";

	public function __construct(){
		parent::__construct('tb_fotos');
	}

	public function salvarFoto($titulo_foto, $type, $arquivo_nome, $arquivo_tmp_nome, $id_album){
		/*trata a foto*/
		$this->titulo_foto = $titulo_foto;		 

		$this->criaThumbnails($type, $arquivo_tmp_nome, $arquivo_nome, self::pasta);

		move_uploaded_file($arquivo_tmp_nome, self::pasta.$arquivo_nome);
		
		try {
			$sql  = "INSERT INTO tb_fotos (tituloFoto, nomeFoto, urlFoto, idAlbum) VALUES (?,?,?,?)";
			$stmt = $this->db->prepare($sql);

			if(!$stmt->execute([$titulo_foto, $arquivo_nome, self::pasta.$arquivo_nome, $id_album])){
				return false;
			} else {
				return true;
			}

		} catch (PDOException $e) {
			echo $e->getMessage();
		}

	}


	function criaThumbnails($type, $tmp_name, $name, $folder){

		$proporcao = 0.5;

		switch ($type) {
			case 'image/jpeg':
			$imagem_temporaria = imagecreatefromjpeg($tmp_name);
			$largura_original = imagesx($imagem_temporaria);
			$altura_original = imagesy($imagem_temporaria);	
			$nova_largura = $largura_original*$proporcao;
			$nova_altura =  $altura_original*$proporcao;

			$imagem_redimensionada = imagecreatetruecolor($nova_largura, $nova_altura);

			imagecopyresampled($imagem_redimensionada, $imagem_temporaria,0,0,0,0,$nova_largura,$nova_altura,$largura_original,$altura_original);

			imagejpeg($imagem_redimensionada, $folder.'thumbnail_'.$name);

			break;

			default:
		# code...
			break;
		}
		// echo 'Criou thumbnail com sucesso!';

	}


	public function listarFotos(){

		$sql = "SELECT * FROM tb_fotos ORDER BY dataCaptura";	
		return $this->db->query($sql)->fetchAll(PDO::FETCH_ASSOC);	
	}

	public function atualizarFoto($id, $titulo_foto){
		$sql = "UPDATE tb_fotos SET tituloFoto = ? WHERE idFoto = ?";
		$result = $this->db->prepare($sql);
		$result->execute([$titulo_foto, $id]);
		return $result->rowCount() > 0 ? true:false;	
	}

	public function excluirFoto($id){
		//pega caminho da foto.
		$nome_arquivo = $this->selecionarFoto($id)->nomeFoto;

		$pasta = explode("/",$this->selecionarFoto($id)->urlFoto)[0]; 

		$arquivo_principal = $pasta."/".$nome_arquivo;	 
		$thumbnail = $pasta."/thumbnail_".$nome_arquivo;


		try {

			if(file_exists($arquivo_principal) == true || file_exists($thumbnail)) {

				unlink($arquivo_principal);		
				unlink($thumbnail);	

				$sql = "DELETE FROM tb_fotos WHERE idFoto= :id";
				$result =$this->db->prepare($sql);
				$result->execute([':id'=>$id]);

				return true;	

			} else {
				
				return false;	
			}		

		} catch (PDOException $e) {

			echo $e->getMessage();
		}
	}

	public function selecionarFoto($id){

		$sql  = "SELECT * FROM tb_fotos WHERE idFoto = $id";
 
		return $this->db->query($sql)->fetch(PDO::FETCH_OBJ);	
	}

}//fim classe

