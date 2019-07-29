<?php 

require_once "../models/Videos.php";

$objVideo = new Videos();

?>

<?php require_once "_header.php"; ?>

<?php require_once "menu.php"; ?>
	
	<div class="container" style="margin-bottom: 80px;">
		<!-- Modal -->
		<div class="modal fade" id="atualizarVideo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">Atualizar Video</h4>
					</div>
					<div class="modal-body">
						<form id="frmVideoU">
							<input type="text" hidden="" id="idvideoU" name="idvideoU">
							<label>Video </label>
							<input type="text" id="titulovideoU" name="titulovideoU" class="form-control input-sm">
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" id="btnAtualizaVideo" class="btn btn-warning" data-dismiss="modal">Salvar</button>

					</div>
				</div>
			</div>
		</div>
		<!-- fim Modal -->


		<fieldset><legend>ADICIONAR VIDEO</legend>

			<form id="form-video" method="POST">

				<label for="tituloVideo">Nome Video:</label> 
				<input type="text" class="form-control" name="tituloVideo" id="tituloVideo" required>	

				<label for="tituloVideo">Código Video:</label> 
				<input type="text" class="form-control" name="codVideo" id="codVideo" required>	

				<label for="tituloVideo">Url Video:</label> 
				<input type="text" class="form-control" name="urlVideo" id="urlVideo" required>					 

				<input type="submit" class="btn btn-primary" value="Salvar">
			</form>

		</fieldset>

		<span id='response'></span>

		<hr>
		<fieldset>
			<legend>LISTAR VIDEOS</legend>
			<table class="table table-striped">
				<thead>		
					<tr>
						<th>#</th>
						<th>Título Video</th>
						<th>Código</th>
						<th>Url</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>		
					<tr>
						<?php 

						foreach ($objVideo->paginacao()["objItens"] as $video) {
							echo '<tr>';
							echo '<td align="center">'.$video["idVideo"].'</td>';							
							echo '<td>'.$video["tituloVideo"].'</td>'; 	
							echo '<td>'.$video["codVideo"].'</td>'; 	
							echo '<td>'.$video["urlVideo"].'</td>'; 	
							echo '<td align="center"><a class="idVideo apagar btn btn-danger" href='.$video["idVideo"].'><i class="fa fa-close"></i></a> ';
							echo '<span class="btn btn-success" data-toggle="modal" data-target="#atualizarVideo" 
							onclick="adicionarDado('.$video["idVideo"].',\''.$video["tituloVideo"].'\')"><i class="fa fa-edit"></i></span></td>'; 
							echo '</tr>';
						}
						?>
					</tr>
				</tbody>
			</table>
			<?php echo $objVideo->paginacao()["botoesPaginacao"] ?>
		</fieldset>

	</div> <!-- fim containter -->

	<script type="text/javascript">		

		function adicionarDado(idvideo, titulovideo){

			$('#idvideoU').val(idvideo);
			$('#titulovideoU').val(titulovideo);
		}
	</script>

	<?php require_once "_footer.php"; ?>