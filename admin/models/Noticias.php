<?php 

require_once "Conexao.php";

class Noticias extends Conexao {

	protected $titulo_noticia;
	protected $conteudo; 

	const pasta = "upload/";

	public function __construct(){
		parent::__construct('tb_noticias');
	}

	public function salvarNoticia($titulo_noticia, $conteudo, $arquivo_name, $arquivo_tmp_name, $arquivo_type, $id_album = nulll, $id_video = null, $tipo_noticia){

		$this->titulo_noticia = $titulo_noticia;

		$this->conteudo = $conteudo;

		$idFoto = $this->salvarFoto($titulo_noticia,$arquivo_type, $arquivo_name, $arquivo_tmp_name, $id_album);

		try {

			$sql  = "INSERT INTO tb_noticias (tituloNoticia, conteudo, idFoto, idAlbum, idVideo, tipoNoticia) VALUES (?,?,?,?,?,?)";
			
			$stmt = $this->db->prepare($sql);

			if(!$stmt->execute([$titulo_noticia, $conteudo, $idFoto, $id_album, $id_video, $tipo_noticia])){
				return false;
			} else {
				return true;
			}

		} catch (PDOException $e) {
			echo $e->getMessage();
		}

	}

	public function salvarFoto($titulo_foto, $type, $arquivo_nome, $arquivo_tmp_nome, $id_album = null){
		
		$this->criaThumbnails($type, $arquivo_tmp_nome, $arquivo_nome, self::pasta);

		move_uploaded_file($arquivo_tmp_nome, self::pasta.$arquivo_nome);
		
		try {

			$sql  = "INSERT INTO tb_fotos (tituloFoto, nomeFoto, urlFoto, idAlbum) VALUES (?,?,?,?)";

			$stmt = $this->db->prepare($sql);

			if(!$stmt->execute([$titulo_foto, $arquivo_nome, self::pasta.$arquivo_nome, $id_album])){

				return false;

			} else {

				return $this->db->lastInsertId();		 
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
		# FALTA COLOCAR VALIDAÇÃO PARA PNG.
			break;
		}
		// echo 'Criou thumbnail com sucesso!';

	}


	public function listarNoticias(){

		$sql = "SELECT * FROM tb_noticias ORDER BY dataCaptura";	
		return $this->db->query($sql)->fetchAll(PDO::FETCH_ASSOC);	
	}

	public function atualizarNoticia($id, $titulo_noticia){
		$sql = "UPDATE tb_noticias SET tituloNoticia = ? WHERE idNoticia = ?";
		$result = $this->db->prepare($sql);
		$result->execute([$titulo_noticia, $id]);
		return $result->rowCount();	
		
	}


	public function excluirNoticia($id){

		$id_foto = $this->getIdFoto($id);		 

		$this->excluirFotoNoticia($id_foto);

		try {

			$sql = "DELETE FROM tb_noticias WHERE idNoticia = :id";
			$result = $this->db->prepare($sql);
			$result->execute([':id' => $id]);

			if(!$result->execute([':id' => $id])) {

				return false;

			} else {

				return true;	
			}

		} catch (PDOException $e) {

			echo $e->getMessage();
		}
	}

	public function getIdFoto($id){

		$sql  = "SELECT * FROM tb_noticias WHERE idNoticia = $id";
		$stmt = $this->db->prepare($sql);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);  

		return $result['idFoto']; 

	}

	public function excluirFotoNoticia($id){

		$nome_arquivo = $this->selecionarFotoNoticia($id)->nomeFoto;

		$pasta = explode("/",$this->selecionarFotoNoticia($id)->urlFoto)[0]; 

		$arquivo_principal = $pasta."/".$nome_arquivo;	

		$thumbnail = $pasta."/thumbnail_".$nome_arquivo;


		try {

			if(file_exists($arquivo_principal) == true || file_exists($thumbnail)) {

				unlink($arquivo_principal);	

				unlink($thumbnail);	

				$sql = "DELETE FROM tb_fotos WHERE idFoto= :id";
				$result =$this->db->prepare($sql);
				$result->execute([':id' => $id]);

				return true;	

			} else {
				
				return false;	
			}		

		} catch (PDOException $e) {

			echo $e->getMessage();
		}
	}


	public function selecionarFotoNoticia($id){

		$sql  = "SELECT * FROM tb_fotos WHERE idFoto = $id";

		return $this->db->query($sql)->fetch(PDO::FETCH_OBJ);	
	}

	public function verifyFotoNoticia($id){

		$sql  = "SELECT * FROM tb_noticias WHERE idFoto = $id";
		$stmt = $this->db->prepare($sql);
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);  
		$count = $stmt->rowCount();     
		return $count;
	}

	public function selecionarNoticia($id){

		$sql  = "SELECT * FROM tb_noticias WHERE idNoticia = $id";
		return $this->db->query($sql)->fetch(PDO::FETCH_OBJ);	
	}


}//fim classe

