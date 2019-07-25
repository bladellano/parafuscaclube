<?php 

require_once "../models/Noticias.php";
require_once "../models/Albuns.php";
require_once "../models/Fotos.php";
require_once "../models/Videos.php";

$objNoticia = new Noticias();
$objAlbum = new Albuns();
$objFoto = new Fotos();
$objVideo = new Videos();

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>

	<script src="../js/jquery.min.js" type="text/javascript"></script>
	<script src="../js/alertify.js" type="text/javascript"></script>
	<script src="../js/functions.js" type="text/javascript"></script>

	<script src="../js/bootstrap.min.js" type="text/javascript"></script>

	<script src="//cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
	<script src="ckeditor/ckeditor.js" type="text/javascript"></script>

	<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

	<link rel="stylesheet" type="text/css" href="../css/alertify.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">



</head>
<body>
	
	<div class="container">

		<!-- Modal -->
		<div class="modal fade" id="atualizarNoticia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">Atualizar Foto</h4>
					</div>
					<div class="modal-body">
						<form id="frmNoticiaU">
							<input type="text" hidden="" id="idnoticiaU" name="idnoticiaU">
							<label>Foto</label>
							<input type="text" id="titulofotoU" name="titulofotoU" class="form-control input-sm">
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" id="btnAtualizaNoticia" class="btn btn-warning" data-dismiss="modal">Salvar</button>

					</div>
				</div>
			</div>
		</div>
		<!-- fim Modal -->


		<h3>CADASTRAR NOTÍCIAS</h3>

		<form id="form-noticia" method="POST" enctype="multipart/form-data">

			<label for="tituloNoticia">Título:</label>
			<input type="text" id="tituloNoticia" class="form-control" name="tituloNoticia" required="">


			<label for="conteudo">Conteúdo:</label>
			<textarea name="conteudo" id="conteudo" cols="30" rows="10"></textarea><Br>

			<div class="row">
				<div class="col-md-6">
					<label for="idAlbum">Album:</label>
					<select name="idAlbum" id="idAlbum" class="form-control"><br>
						<option value="">SELECIONE</option>
						<?php foreach($objAlbum->listarAlbuns() as $album): ?>
							<option value="<?php echo $album["idAlbum"] ?>"><?php echo $album["nomeAlbum"] ?></option>
						<?php endforeach;  ?>
					</select>
				</div>
				<div class="col-md-6">	
					<label for="idVideo">Video:</label>
					<select name="idVideo" id="idVideo" class="form-control">
						<option value="">SELECIONE</option>
						<?php foreach($objVideo->listarVideos() as $video): ?>
							<option value="<?php echo $video["idVideo"] ?>"><?php echo $video["tituloVideo"] ?></option>
						<?php endforeach;  ?>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-md-6">
					<label for="tipoNoticia">Tipo Notícia:</label>
					<select name="tipoNoticia" id="tipoNoticia" class="form-control">							
						<option value="N">Notícia</option>
						<option value="A">Agenda</option>
						<option value="E">Evento</option>
					</select>
				</div>
				<div class="col-md-6">

					<label for="foto" >Anexar Foto</label>
					<input type="file" id="foto" name="foto">
				</div>
			</div>
			<div class="row"><div class="col-md-12 text-center"><input type="submit" class="btn btn-primary" value="Salvar"></div></div>

		</form>

		<span id='response'></span>
		<hr>
		<?php  
		if($objNoticia->paginacao()["totalResult"] > 0):
			?>


			<h3>LISTA DE NOTÍCIAS</h3> 
			<table class="table table-striped">
				<thead>		
					<tr>
						<th>Titulo</th>
						<th>Nome Arquivo</th>
						<th>Id Album</th>
						<th>Entrada</th>
						<th>Ação</th>
					</tr>
				</thead>
				<tbody>		
					<tr>
						<?php 

						foreach ($objNoticia->paginacao()["objItens"] as $noticia) {
								// $nomeAlbum =  ($noticia["idAlbum"] > 0) ? $objAlbum->selecionarAlbum($noticia["idAlbum"])->nomeAlbum : '--';


							echo '<tr>';
							echo '<td>'.$noticia["tituloNoticia"].'</td>'; 	
							echo '<td><img width="80" src="../'.$objFoto->selecionarFoto($noticia["idFoto"])->urlFoto.'" alt=""></td>';
							echo '<td>'.$objAlbum->selecionarAlbum($noticia["idAlbum"]).'</td>'; 			
							echo '<td>'.date('d/m/Y H:i:s', strtotime($noticia["dataCaptura"])).'</td>'; 				 
							echo '<td align="center"><a class="idNoticia apagar" href='.$noticia["idNoticia"].'><ion-icon name="close-circle"></ion-icon></a> '; 
							
							echo ' <a href="#" data-toggle="modal" data-target="#atualizarNoticia" 
							onclick="adicionarDado('.$noticia["idNoticia"].',\''.$noticia["tituloNoticia"].'\')"><ion-icon name="options"></ion-icon></a>
							</td>';	
							echo '</tr>';
						}

						?>

					</tbody>
				</table>
				<!-- mostrando os botoes da paginação -->
				<?php 

				echo $objNoticia->paginacao()["botoesPaginacao"] 

				?>



				<?php 


			else:

				echo "Não há registro(s).";

			endif; 

			?>


		</div> <!-- fim containter -->

		<script type="text/javascript">	

			CKEDITOR.replace( 'conteudo' );	

			// setando o campo titulo da foto com uma sugestão
			$('#tituloFoto').val($('table tr td').eq(0).text());

			function adicionarDado(idnoticia,titulofoto){

				$('#idnoticiaU').val(idnoticia);
				$('#titulofotoU').val(titulofoto);
			}
		</script>

	</body>
	</html>