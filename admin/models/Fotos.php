<?php 

session_start();

/*upload_max_filesize = 10M
max_file_uploads = 20
post_max_size = 208M
memory_limit = 216M
*/

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
		/*Trata a foto*/

		$nomeArquivo = uniqid('img_').".".pathinfo($arquivo_nome, PATHINFO_EXTENSION);
		$newNameFile = $nomeArquivo; 

		$this->titulo_foto = $titulo_foto;
		$this->novo_nome = $newNameFile;
		$this->extensao = pathinfo($arquivo_nome, PATHINFO_EXTENSION);

		$this->criaThumbnails(
			$type, 
			$arquivo_tmp_nome, 
			$newNameFile, 
			self::pasta
		);

		move_uploaded_file($arquivo_tmp_nome, self::pasta.$newNameFile);

		
		try {

			$sql = "INSERT INTO tb_fotos (tituloFoto, nomeFoto, urlFoto, idAlbum,idUsuario) VALUES (?,?,?,?,?)";

			$stmt = $this->db->prepare($sql);

			if(!$stmt->execute([$titulo_foto, $arquivo_nome, self::pasta.$newNameFile, $id_album, $_SESSION['iduser']])){
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


	public function listarFotos($id=null){

		$aWhere = ($id != "") ? "WHERE idAlbum = $id" :"";

		$sql = "SELECT * FROM tb_fotos $aWhere ORDER BY dataCaptura DESC LIMIT 25";

	    return $this->db->query($sql)->fetchAll(PDO::FETCH_ASSOC);	
	}

	public function atualizarFoto($id, $titulo_foto){
		$sql = "UPDATE tb_fotos SET tituloFoto = ? WHERE idFoto = ?";
		$result = $this->db->prepare($sql);
		$result->execute([$titulo_foto, $id]);
		return $result->rowCount() > 0 ? true:false;	
	}

	public function excluirFoto($id){
		//Pega caminho da foto.
		$url_foto = $this->selecionarFoto($id)->urlFoto;

		$pasta = explode("/",$this->selecionarFoto($id)->urlFoto)[0]; 

		$arquivo_principal = $url_foto;	 
		$thumbnail = $pasta."/thumbnail_".explode("/",$url_foto)[1];

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

}//Fim classe

