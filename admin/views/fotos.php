<?php 

require_once "../models/Fotos.php";
require_once "../models/Albuns.php";
require_once "../models/Noticias.php";

$fotos = new Fotos();
$objAlbum = new Albuns();
$objNoticia = new Noticias();

?>
<?php require_once "_header.php"; ?>

<?php require_once "menu.php"; ?>

 
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


		<div class="row">
			<div class="col-md-4 text-center">

				<h3>UPLOAD DE FOTOS</h3>
				<form id="form-upload" method="POST" enctype="multipart/form-data">

					<label for="tituloFoto">Título Foto: </label>
					<input type="text" name="tituloFoto" id="tituloFoto" class="form-control" required>

					<label for="idAlbum">Album: </label>
					<select name="idAlbum" id="idAlbum" required="" class="form-control">
						<option value="">SELECIONE</option>
						<?php foreach($objAlbum->listarAlbuns() as $album): ?>
							<option value="<?php echo $album["idAlbum"] ?>"><?php echo $album["nomeAlbum"] ?></option>
						<?php endforeach;  ?>
					</select>	 

					<label for="arquivo"><ion-icon name="document"></ion-icon> Selecionar arquivo(s):</label>
					<input type="file" multiple="" name="arquivo" id="arquivo" required="">

					<input type="submit" class="btn btn-primary" value="Salvar">

				</form>
			</div> <!--col-md-6-->
			<div class="col-md-8 text-center">
				<?php  

				if($fotos->paginacao()["totalResult"] > 0):

					?>

					<h3>LISTA DE FOTOS</h3>
					<table class="table table-striped">
						<thead >		
							<tr>
								<th>Titulo</th>
								<th>Foto</th>
								<th>Album</th>
								<th>Entrada</th>
								<th>Ação</th>
							</tr>
						</thead>
						<tbody>		
							<tr>

								<?php 

								foreach ($fotos->paginacao()["objItens"] as $foto) {

									echo '<tr>';
									echo '<td>'.$foto["tituloFoto"].'</td>'; 	
									echo '<td><img width="50" src="../upload/thumbnail_'.$foto["nomeFoto"].'" alt=""></td>'; 			
									echo '<td>'.$objAlbum->selecionarAlbum($foto["idAlbum"]).'</td>'; 			
									echo '<td>'.date('d/m/Y H:i:s', strtotime($foto["dataCaptura"])).'</td>'; 	

										if(!$objNoticia->verifyFotoNoticia($foto["idFoto"])): //Verifica se tem foto de notícia na tabela.

										echo '<td>
										<a class="idFoto apagar btn btn-danger" href='.$foto["idFoto"].'><ion-icon name="close-circle"></ion-icon></a>
										<span class="btn btn-success" data-toggle="modal" data-target="#atualizarFoto" 
										onclick="adicionarDado('.$foto["idFoto"].',\''.$foto["tituloFoto"].'\')"><ion-icon name="options"></ion-icon></span>
										</td>'; 							

									else:

										echo '<td>

										<span class="btn btn-success" data-toggle="modal" data-target="#atualizarFoto" 
										onclick="adicionarDado('.$foto["idFoto"].',\''.$foto["tituloFoto"].'\')"><ion-icon name="options"></ion-icon></span>
										</td>'; 		

									endif;

									echo '</tr>';

								}

								?>

							</tbody>
						</table>
						<!-- mostrando os botoes da paginação -->
						<?php echo $fotos->paginacao()["botoesPaginacao"] ?>
						<?php 

					else:

						echo "Não há registro(s).";

					endif; ?>
					
				</div><!--col-md-6-->
			</div>

			<span id='response'></span>

		</div> <!-- fim containter -->

		<script type="text/javascript">		

			function adicionarDado(idfoto,titulofoto){

				$('#idfotoU').val(idfoto);
				$('#titulofotoU').val(titulofoto);
			}
		</script>

<?php require_once "_footer.php"; ?>

 