<?php 

require_once "../models/Albuns.php";

$albuns = new Albuns();

?>

<?php require_once "_header.php"; ?>

<?php require_once "menu.php"; ?>
	
	<div class="container" style="margin-bottom: 80px;">
		<!-- Modal -->
		<div class="modal fade" id="atualizarAlbum" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">Atualizar Album</h4>
					</div>
					<div class="modal-body">
						<form id="frmAlbumU">
							<input type="text" hidden="" id="idalbumU" name="idalbumU">
							<label>Título do Album: </label>
							<input type="text" id="nomealbumU" name="nomealbumU" class="form-control input-sm">
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" id="btnAtualizaAlbum" class="btn btn-warning" data-dismiss="modal">Salvar</button>

					</div>
				</div>
			</div>
		</div>
		<!-- fim Modal -->


		<fieldset><legend>CRIAR ALBUM</legend>

			<form id="form-album" method="POST">

				<label for="tituloFoto">Nome Album:</label> 
				<input class="form-control" type="text" name="nomeAlbum" id="nomeAlbum" required>					 

				<input class="btn btn-primary" type="submit" value="Salvar">
			</form>

		</fieldset>

		<span id='response'></span>

		<hr>
		<fieldset>
			<legend>LISTA DE ALBUNS</legend>
			<table class="table table-striped">
				<thead>		
					<tr>
						<th>#</th>
						<th>Nome Album</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>		
					<tr>
						<?php 

						foreach ($albuns->paginacao()["objItens"] as $album) {
							echo '<tr>';
							echo '<td align="center">'.$album["idAlbum"].'</td>';							
							echo '<td>'.$album["nomeAlbum"].'</td>'; 	
							echo '<td align="center"><a class="idAlbum apagar btn btn-danger" href='.$album["idAlbum"].'><i class="fa fa-close"></i></a> ';
							echo '<span class="btn btn-success" data-toggle="modal" data-target="#atualizarAlbum" 
							onclick="adicionarDado('.$album["idAlbum"].',\''.$album["nomeAlbum"].'\')"><i class="fa fa-edit"></i></span></td>'; 	

							echo '</tr>';
						}
						?>
					</tr>
				</tbody>
			</table>
			<?php echo $albuns->paginacao()["botoesPaginacao"] ?>
		</fieldset>

	</div> <!-- fim containter -->

	<script type="text/javascript">		
		function adicionarDado(id,titulo){

			$('#idalbumU').val(id);
			$('#nomealbumU').val(titulo);
		}
	</script>

	<?php require_once "_footer.php"; ?>