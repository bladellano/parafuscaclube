<?php 

require_once "Conexao.php";

class Membros extends Conexao {

	protected $nome_membro;
	protected $user_membro;
	protected $pass_membro;
	protected $ano_fusca;	 

	const table = 'tb_membros';
	const pasta = 'upload/';

	public function __construct(){

		parent::__construct(self::table);

	}
	
	public function salvarMembro($array_dados, $array_foto = null){

		$nomeArquivo = uniqid('img_').".".pathinfo($array_foto['arquivo_name'], PATHINFO_EXTENSION);
		$newNameFile = $nomeArquivo;

		$this->criaThumbnails(
			$array_foto['arquivo_type'], 
			$array_foto['arquivo_tmp_name'], 
			$newNameFile, 
			self::pasta
		);

		move_uploaded_file($array_foto['arquivo_tmp_name'], self::pasta.$newNameFile);
		
		$aValues = array();

		foreach ($array_dados as $key => $value) {
			$this->$key = $value;//Seto os atributos.
			$aValues[] = $value;//Cria array de valores
		}

		array_push(
			$aValues, 
			self::pasta.$newNameFile,
			self::pasta."thumbnail_".$newNameFile
		);

		try {

			$sql  = "INSERT INTO ".self::table." (nomeMembro, userMembro, passMembro, anoFusca, foto, thumb_foto) VALUES (?,?,?,?,?,?)";

			$stmt = $this->db->prepare($sql);

			if(!$stmt->execute($aValues)){

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


	public function atualizarMembro($array_dados){

		$sql = "UPDATE ".self::table." SET nomeMembro = ?, userMembro = ?, anoFusca = ? WHERE idMembro = ?";
		$result = $this->db->prepare($sql);
		$result->execute([$array_dados['nomeMembro'], $array_dados['userMembro'], $array_dados['anoFusca'], $array_dados['idMembro']]);
		return $result->rowCount() > 0 ? true : false;	
	}

	public function excluirMembro($id){

		try {
			
			$sql = "DELETE FROM ".self::table." WHERE idMembro = :id";
			$result =$this->db->prepare($sql);
			$result->execute([':id' => $id]);

			return $result->rowCount() > 0 ? true : false;		

		} catch (PDOException $e) {

			echo $e->getMessage();
		}
	}


	public function selecionarMembro($id){

		$sql  = "SELECT * FROM ".self::table." WHERE idMembro = $id";

		return $this->db->query($sql)->fetch(PDO::FETCH_OBJ);	
	}

}//fim classe

