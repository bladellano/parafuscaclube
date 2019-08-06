<?php 

require_once "Conexao.php";

class Noticias extends Conexao {

	protected $titulo_noticia;
	protected $conteudo; 
	protected $nome_arquivo_novo; 

	const pasta = "upload/";

	public function __construct(){
		parent::__construct('tb_noticias');
	}

	public function salvarNoticia($titulo_noticia, $conteudo, $arquivo_name=null, $arquivo_tmp_name=null, $arquivo_type=null, $id_album = nulll, $id_video = null, $tipo_noticia){

		$newNameFile = "";

		if(!empty($arquivo_name)){

			$nomeArquivo = uniqid('img_').".".pathinfo($arquivo_name, PATHINFO_EXTENSION);
			$newNameFile = $nomeArquivo;

			$this->criaThumbnails(
				$arquivo_type, 
				$arquivo_tmp_name, 
				$newNameFile, 
				self::pasta
			);

			move_uploaded_file($arquivo_tmp_name, self::pasta.$newNameFile);
			
		}

		$this->titulo_noticia = $titulo_noticia;
		$this->conteudo = $conteudo;
		$this->nome_arquivo_novo = $newNameFile;

		try {

			$sql  = "INSERT INTO tb_noticias (tituloNoticia, conteudo, idAlbum, idVideo, tipoNoticia, imagem, thumb_imagem) VALUES (?,?,?,?,?,?,?)";
			
			$stmt = $this->db->prepare($sql);

			if(!$stmt->execute([$titulo_noticia, $conteudo, $id_album, $id_video, $tipo_noticia, self::pasta.$newNameFile, self::pasta."thumbnail_".$newNameFile])){

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
		# FALTA COLOCAR VALIDAÇÃO PARA PNG.
			break;
		}
		// echo 'Criou thumbnail com sucesso!';

	}


	public function listarNoticias($tipo = 'N'){

		$sql = "SELECT * FROM tb_noticias WHERE tipoNoticia = '$tipo' ORDER BY dataCaptura DESC LIMIT 4";	
		return $this->db->query($sql)->fetchAll(PDO::FETCH_ASSOC);	
	}

	function escreveMesPtbr($mes){

		switch ($mes){

			case 1: $mes = "JAN"; break;
			case 2: $mes = "FEV"; break;
			case 3: $mes = "MAR"; break;
			case 4: $mes = "ABR"; break;
			case 5: $mes = "MAI"; break;
			case 6: $mes = "JUN"; break;
			case 7: $mes = "JUL"; break;
			case 8: $mes = "AGO"; break;
			case 9: $mes = "SET"; break;
			case 10: $mes = "OUT"; break;
			case 11: $mes = "NOV"; break;
			case 12: $mes = "DEZ"; break;

		}

		return $mes;
	}

	public function atualizarNoticia($id, $titulo_noticia){
		$sql = "UPDATE tb_noticias SET tituloNoticia = ? WHERE idNoticia = ?";
		$result = $this->db->prepare($sql);
		$result->execute([$titulo_noticia, $id]);
		return $result->rowCount();	
		
	}


	public function excluirNoticia($id){

		if(self::selecionarNoticia($id)['imagem'] != 'upload/'){

			if( file_exists( self::selecionarNoticia($id)['imagem'] ) == false ) {
				// return false;
				die("Arquivo não existe mais.");
			}

		unlink(self::selecionarNoticia($id)['imagem']); // Apaga as fotos da pasta upload.	
		unlink(self::selecionarNoticia($id)['thumb_imagem']);

	}

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

		return $e->getMessage();
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
	return $this->db->query($sql)->fetch(PDO::FETCH_ASSOC);	
}


} // Fim classe
