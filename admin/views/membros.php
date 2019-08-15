<?php 

require_once "../models/Membros.php";

$objMembro = new Membros();

require_once "_header.php"; 

require_once "menu.php";

?>

<div class="container" style="margin-bottom: 80px;">
	<!-- Modal -->
	<div class="modal fade" id="atualizarMembro" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel">Atualizar Membro</h4>
				</div>


				<div class="modal-body">

					<form id="frmMembroU">

						<input type="hidden" id="idmembroU" name="idmembroU">

						<label>Nome </label>
						<input type="text" id="nomemembroU" name="nomemembroU" class="form-control input-sm">

						<label>Usuário </label>
						<input type="text" id="usuariomembroU" name="usuariomembroU" class="form-control input-sm">

						<label>Ano Fusca </label>
						<input type="text" id="anofuscaU" name="anofuscaU" class="form-control input-sm">

						<label>E-mail </label>
						<input type="text" id="email" name="email" class="form-control input-sm">

						<label>Telefone </label>
						<input type="text" id="telefone" name="telefone" class="form-control input-sm">

						<label>Endereço </label>
						<input type="text" id="endereco" name="endereco" class="form-control input-sm">

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
		<table class="table table-hover">
			<thead>		
				<tr>
					<th>#</th>
					<th>Nome Membro</th>
					<th>Usuário</th>
					<th>E-mail</th>
					<th>Telefone</th>
					<th>anoFusca</th>				 
					<th>Entrada</th>				 
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>		
				<tr>
					<?php 

					foreach ($objMembro->paginacao()["objItens"] as $membro) {

						$imagem = strlen($membro['thumb_foto']) > 17 ? $membro['thumb_foto'] :"img/sem-foto.jpg";//Verifica sem foto.

						echo '<tr>';
						echo '<td align="center">'.$membro["idMembro"].'</td>';
						echo '<td><div id="caixa_'.$membro["idMembro"].'">
						<img width="128" height="98" src="../'.$imagem.'" alt="">
						</div>

						<span class="viewFoto btn btn-default" data-id="'.$membro["idMembro"].'">'.$membro["nomeMembro"].'</span></td>';
						echo '<td>'.$membro["userMembro"].'</td>'; 	
						echo '<td>'.$membro["email"].'</td>'; 	
						echo '<td>'.$membro["telefone"].'</td>'; 	
						echo '<td align="center">'.$membro["anoFusca"].'</td>'; 	
						echo '<td>'.$objMembro->formatDataPtbr($membro["dataCaptura"]).'</td>'; 	
						echo '<td align="center"><a class="idMembro apagar btn btn-danger" href='.$membro["idMembro"].'><i class="fa fa-close"></i></a> ';
						echo '<span class="btn btn-success" data-toggle="modal" data-target="#atualizarMembro" 
						onclick="adicionarDado(\''.$membro["idMembro"].'\',\''.$membro["nomeMembro"].'\',\''.$membro["userMembro"].'\',\''.$membro["anoFusca"].'\',\''.$membro["email"].'\',\''.$membro["telefone"].'\',\''.$membro["endereco"].'\')"><i class="fa fa-edit"></i></td>'; 
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

	function adicionarDado(id, nome, usuario, anofusca, email, telefone, endereco){ 

		$('#idmembroU').val(id);
		$('#nomemembroU').val(nome);
		$('#usuariomembroU').val(usuario);
		$('#anofuscaU').val(anofusca);

		$('#email').val(email);
		$('#telefone').val(telefone);
		$('#endereco').val(endereco);
	}
</script>

<?php require_once "_footer.php"; ?>