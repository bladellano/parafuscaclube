<?php 

require_once "../models/Membros.php";

$objMembro = new Membros();

?>

<?php require_once "_header.php"; ?>

<?php require_once "menu.php"; ?>
	
	<div class="container" style="margin-bottom: 80px;">
		<!-- Modal -->
		<div class="modal fade" id="atualizarMembro" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">Atualizar Membro</h4>
					</div>
					<div class="modal-body">
						<form id="frmMembroU">
							<input type="text" hidden="" id="idmembroU" name="idmembroU">
							<label>Membro </label>
							<input type="text" id="nomemembroU" name="nomemembroU" class="form-control input-sm">
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" id="btnAtualizaMembro" class="btn btn-warning" data-dismiss="modal">Salvar</button>

					</div>
				</div>
			</div>
		</div>
		<!-- fim Modal -->


		<fieldset><legend>ADICIONAR MEMBRO</legend>
			 
			<form id="form-membro" method="POST" enctype="multipart/form-data">

				<label for="nomeMembro">Nome Membro:</label> 
				<input type="text" class="form-control" name="nomeMembro" id="nomeMembro" required>	

				<label for="foto" ><i class="fa fa-image"></i> Adicionar uma Foto</label>
				<input type="file" id="foto" name="foto">

				<label for="userMembro">Usuário:</label> 
				<input type="text" class="form-control" name="userMembro" id="userMembro" required>	

				<label for="passMembro">Senha:</label> 
				<input type="password" class="form-control" name="passMembro" id="passMembro" required>	

				<label for="anoFusca">Ano Fusca:</label> 
				<input type="number" class="form-control" name="anoFusca" id="anoFusca">					 

				<input type="submit" class="btn btn-primary" value="Salvar">
			</form>

		</fieldset>

		<span id='response'></span>

		<hr>
		<fieldset>
			<legend>LISTAR MEMBROS</legend>
			<table class="table table-striped">
				<thead>		
					<tr>
						<th>#</th>
						<th>Nome Membro</th>
						<th>Usuário</th>
						<th>anoFusca</th>				 
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>		
					<tr>
						<?php 

						foreach ($objMembro->paginacao()["objItens"] as $membro) {
							echo '<tr>';
							echo '<td align="center">'.$membro["idMembro"].'</td>';							
							echo '<td>'.$membro["nomeMembro"].'</td>'; 	
							echo '<td>'.$membro["userMembro"].'</td>'; 	
							echo '<td>'.$membro["anoFusca"].'</td>'; 	
							echo '<td align="center"><a class="idMembro apagar btn btn-danger" href='.$membro["idMembro"].'><i class="fa fa-close"></i></a> ';
							echo '<span class="btn btn-success" data-toggle="modal" data-target="#atualizarMembro" 
							onclick="adicionarDado('.$membro["idMembro"].',\''.$membro["nomeMembro"].'\')"><i class="fa fa-edit"></i></td>'; 
							echo '</tr>';
						}
						?>
					</tr>
				</tbody>
			</table>
			<?php echo $objMembro->paginacao()["botoesPaginacao"] ?>
		</fieldset>

	</div> <!-- fim containter -->

	<script type="text/javascript">		

		function adicionarDado(idvideo, titulovideo){

			$('#idmembroU').val(idvideo);
			$('#nomemembroU').val(titulovideo);
		}
	</script>

	<?php require_once "_footer.php"; ?>