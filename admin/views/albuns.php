<?php 

// require_once "../models/Conexao.php";
require_once "../models/Albuns.php";

$albuns = new Albuns();

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

 
</head>
<body>
	
	<div class="container">


		<!-- Modal -->
		<div class="modal fade" id="atualizarCategoria" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">Atualizar Album</h4>
					</div>
					<div class="modal-body">
						<form id="frmFotoU">
							<input type="text" hidden="" id="idalbumU" name="idalbumU">
							<label>Album </label>
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


		<fieldset><legend>CADASTRO DE ALBUM</legend>

			<form id="form-album" method="POST">

				<label for="tituloFoto">Nome Album:</label> <input type="text" name="nomeAlbum" id="nomeAlbum" required>						 

				<input type="submit" value="Salvar">
			</form>

		</fieldset>


		<span id='response'></span>
		<hr>
		<fieldset>
			<legend>LISTA DE ALBUNS</legend><table>
				<thead>		
					<tr>
						<th>ID ALBUM</th>
						<th>ALBUM</th>
						<th>Ação</th>
					</tr>
				</thead>
				<tbody>		
					<tr>
						<?php 

						foreach ($albuns->paginacao()["objItens"] as $album) {
							echo '<tr>';
							echo '<td>'.$album["idAlbum"].'</td>'; 	
							
							echo '<td>'.$album["nomeAlbum"].'</td>'; 	
							echo '<td><a class="idAlbum apagar btn btn-danger" href='.$album["idAlbum"].'>Apagar</a> '; 	

							echo ' <span class="btn btn-success" data-toggle="modal" data-target="#atualizarFoto" 
							onclick="adicionarDado('.$album["idAlbum"].',\''.$album["nomeAlbum"].'\')">Editar</span></td>'; 	

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
		function adicionarDado(idfoto,titulofoto){

			$('#idfotoU').val(idfoto);
			$('#titulofotoU').val(titulofoto);
		}
	</script>

</body>
</html>