<?php 

require_once "../models/Noticias.php";
require_once "../models/Albuns.php";
require_once "../models/Fotos.php";

$objNoticia = new Noticias();
$objAlbum = new Albuns();
$objFoto = new Fotos();

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

	<link rel="stylesheet" type="text/css" href="../css/alertify.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<style>
		
		label {
			/*display: block;*/
		}
	</style>
</head>
<body>
	
	<div class="container">

		<!-- Modal -->
		<div class="modal fade" id="atualizarFoto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">Atualizar Foto</h4>
					</div>
					<div class="modal-body">
						<form id="frmFotoU">
							<input type="text" hidden="" id="idfotoU" name="idfotoU">
							<label>Foto</label>
							<input type="text" id="titulofotoU" name="titulofotoU" class="form-control input-sm">
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" id="btnAtualizaFoto" class="btn btn-warning" data-dismiss="modal">Salvar</button>

					</div>
				</div>
			</div>
		</div>
		<!-- fim Modal -->


		<fieldset><legend>CADASTRAR NOTÍCIAS</legend>

			<form id="form-noticia" method="POST" enctype="multipart/form-data">


				<label for="tituloNoticia">Titulo:</label>
				<input type="text" id="tituloNoticia" name="tituloNoticia" required=""><br>

				<label for="conteudo">Conteúdo:</label>
				<input type="text" id="conteudo" name="conteudo" required=""><br>

				Foto: <label for="foto">Foto:</label>
				<input type="file" id="foto" name="foto"><br>

				<label for="idAlbum">Album: </label>
				<select name="idAlbum" id="idAlbum"><br>
					<option value="">SELECIONE</option>
					<?php foreach($objAlbum->listarAlbuns() as $album): ?>
						<option value="<?php echo $album["idAlbum"] ?>"><?php echo $album["nomeAlbum"] ?></option>
					<?php endforeach;  ?>
				</select><br>

				<label for="idVideo">Video: </label>
				<select name="idVideo" id="idVideo">
					<option value="">SELECIONE</option>
					<?php foreach($objAlbum->listarAlbuns() as $album): ?>
						<option value="<?php echo $album["idAlbum"] ?>"><?php echo $album["nomeAlbum"] ?></option>
					<?php endforeach;  ?>
				</select><br>
				<label for="tipoNoticia">Tipo Notícia:</label>
				<select name="tipoNoticia" id="tipoNoticia">
					<!-- <option value="">SELECIONE</option> -->
					<option value="N">Notícia</option>
					<option value="A">Agenda</option>
					<option value="E">Evento</option>
				</select>

				
<!-- 
				<label for="tituloFoto">Título Foto: </label><input type="text" name="tituloFoto" id="tituloFoto" required>
				<br>
				<label for="idAlbum">Album: </label>
				<select name="idAlbum" id="idAlbum" required="">
					<option value="">SELECIONE</option>
					<?php foreach($objAlbum->listarAlbuns() as $album): ?>
						<option value="<?php echo $album["idAlbum"] ?>"><?php echo $album["nomeAlbum"] ?></option>
					<?php endforeach;  ?>
				</select>
				<br>

				Fotos: <label for="arquivo">Arquivo(s):</label>
				<input type="file" multiple="" name="arquivo" id="arquivo" required=""> -->

				<br>





				<input type="submit" value="Salvar">
			</form>

		</fieldset>


		<span id='response'></span>
		<hr>
		<?php  
		if($objNoticia->paginacao()["totalResult"] > 0):
			?>

			<fieldset>
				<legend>LISTA DE ŃOTÍCIAS</legend>
				<table>
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

								echo '<tr>';
								echo '<td>'.$noticia["tituloNoticia"].'</td>'; 	
								echo '<td><img width="80" src="../'.$objFoto->selecionarFoto($noticia["idFoto"])->urlFoto.'" alt=""></td>';
								echo '<td>'.$objAlbum->selecionarAlbum($noticia["idAlbum"])->nomeAlbum.'</td>'; 			
								echo '<td>'.date('d/m/Y H:i:s', strtotime($noticia["dataCaptura"])).'</td>'; 				 
								echo '<td><a class="idNoticia apagar btn btn-danger" href='.$noticia["idNoticia"].'>Apagar</a> '; 
								echo ' <span class="btn btn-success" data-toggle="modal" data-target="#atualizarFoto" 
								onclick="adicionarDado('.$noticia["idNoticia"].',\''.$noticia["tituloNoticia"].'\')">Editar</span></td>';	
								echo '</tr>';
							}

							?>

						</tbody>
					</table>
					<!-- mostrando os botoes da paginação -->
					<?php 

					echo $objNoticia->paginacao()["botoesPaginacao"] 

					?>

				</fieldset>


				<?php 


			else:

				echo "Não há registro(s).";

			endif; 

			?>


		</div> <!-- fim containter -->

		<script type="text/javascript">		

			// setando o campo titulo da foto com uma sugestão
			$('#tituloFoto').val($('table tr td').eq(0).text());

			function adicionarDado(idfoto,titulofoto){

				$('#idfotoU').val(idfoto);
				$('#titulofotoU').val(titulofoto);
			}
		</script>

	</body>
	</html>