<?php 

// require_once "../models/Categoria.php";

// $foto = new Categoria();

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

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" type="text/javascript"></script>

	<link rel="stylesheet" type="text/css" href="../css/alertify.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


	<style>
		table, td, th {
			border: 1px solid black; 
			border-collapse: collapse;
		}
		table {
			width: 100%;
		}
		td {
			text-align: center;
		}
		form > label {
			/*display: block;*/

		}
		form > input, select {
			margin-bottom: 12px;
		}
		.modal-header{
			display: inline-block;
		}
	</style>

</head>
<body>
	
	<div class="container">


		<!-- Modal -->
		<div class="modal fade" id="atualizarCategoria" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">Atualizar Categoria</h4>
					</div>
					<div class="modal-body">
						<form id="frmFotoU">
							<input type="text" hidden="" id="idalbumU" name="idalbumU">
							<label>Foto</label>
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


		<fieldset><legend>UPLOAD DE FOTOS</legend>

			<form id="form-album" method="POST" enctype="multipart/form-data">

				<label for="tituloFoto">Nome Album: </label><input type="text" name="nomeAlbum" id="nomeAlbum" required>
				<br>		 
			 
				<input type="submit" value="Salvar">
			</form>

		</fieldset>



		<span id='response'></span>
<hr>
		<fieldset>
			<legend>LISTA DE FOTOS</legend><table>
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

						foreach ($foto->listarFotos() as $foto) {
							echo '<tr>';
							echo '<td>'.$foto["tituloFoto"].'</td>'; 	
							echo '<td>'.$foto["nomeFoto"].'</td>'; 			
							echo '<td>'.$foto["idAlbum"].'</td>'; 			
							echo '<td>'.$foto["dataCaptura"].'</td>'; 	
							echo '<td><a class="idFoto apagar btn btn-danger" href='.$foto["idFoto"].'>Apagar</a> '; 	

							echo ' <span class="btn btn-success" data-toggle="modal" data-target="#atualizarFoto" 
							onclick="adicionarDado('.$foto["idFoto"].',\''.$foto["tituloFoto"].'\')">Editar</span></td>'; 	

							echo '</tr>';
						}
						?>
					</tr>
				</tbody>
			</table>

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