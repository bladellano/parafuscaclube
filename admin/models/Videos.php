<?php
// ob_start();
// session_start();

require_once "Conexao.php";

class Videos extends Conexao
{

 protected $titulo_video;
 protected $cod_video;
 protected $url_video;

 const table = 'tb_videos';

 public function __construct()
 {

  parent::__construct(self::table);

 }

 public function salvarVideo($titulo_video, $cod_video, $url_video)
 {

  $this->titulo_video = $titulo_video;
  $this->cod_video    = $cod_video;
  $this->url_video    = $url_video;

  try {

   $sql = "INSERT INTO tb_videos (tituloVideo,codVideo, urlVideo, idUsuario) VALUES (?,?,?,?)";

   $stmt = $this->db->prepare($sql);

   if (!$stmt->execute([$this->titulo_video, $this->cod_video, $this->url_video, $_SESSION['iduser']])) {

    return false;
   } else {
    return true;
   }

  } catch (PDOException $e) {

   echo $e->getMessage();

  }

 }

 public function listarVideos($limit = null)
 {

  $sql = "SELECT * FROM " . self::table . " ORDER BY dataCaptura DESC $limit";

  return $this->db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
 }

 public function atualizarVideo($id, $titulo_video)
 {

  $sql    = "UPDATE " . self::table . " SET tituloVideo = ? WHERE idVideo = ?";
  $result = $this->db->prepare($sql);
  $result->execute([$titulo_video, $id]);
  return $result->rowCount() > 0 ? true : false;
 }

 public function excluirVideo($id)
 {
  //VERIFICAR SE O ID DO VIDEO ESTA RELACIONADO A ALGUMA NOTICIA.
  try {

   $sql    = "DELETE FROM " . self::table . " WHERE idVideo = :id";
   $result = $this->db->prepare($sql);
   $result->execute([':id' => $id]);

   return $result->rowCount() > 0 ? true : false;

  } catch (PDOException $e) {

   echo $e->getMessage();
  }
 }

 public function selecionarVideo($id)
 {

  $sql = "SELECT * FROM " . self::table . " WHERE idVideo = $id";

  return $this->db->query($sql)->fetch(PDO::FETCH_OBJ);
 }

} //fim classe
