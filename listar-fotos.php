	<?php 
	
	echo '<hr>';

	$id = $_REQUEST["id"];

	require_once "admin/models/Fotos.php";

	$objFotos = new Fotos();

	echo '<div class="container">
	<div class="row" ><a name="galeria"></a>';

	foreach ($objFotos->listarFotos($id) as $value) {		

		echo '<div class="col-lg-3 col-md-4 col-xs-6 thumb">
		<img style="margin-bottom:40px; border:1px solid #333" width="250px" height="250px" class="img-responsive_" src="admin/'.$value['urlFoto'].'">
		</div>';
	}
	echo '</div>
	</div>';
	echo '<p></p>';

	?>