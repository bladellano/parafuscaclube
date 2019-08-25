 
<div class="container content-center">
	
	<h1>Todos os videos</h1>

	<?php 

	require_once "admin/models/Videos.php"; 

	$objVideo = new Videos();

	$aVideos = $objVideo->listarVideos();

	echo '<div class="container"><div class="row">';

	foreach ($aVideos as $video) {

		echo'<div class="col-lg-3 col-md-4 col-xs-12 thumb">';
		
		echo '<div class="panel panel-default">
		<div class="panel-body text-center">
		'.$video['tituloVideo'].'
		</div>
		<div class="panel-footer"><iframe width="100%" height="200px" src="https://www.youtube.com/embed/'.$video['codVideo'].'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
		</div>';

		echo '</div>'; 		
	}

	echo '</div></div>';

	?>

	<div id="result"></div>

</div> <!--container-->

<script>

	$('a[data-id]').click(function(event) {

		let id = $(this).attr('data-id');

		$( "#result" ).load( "listar-fotos.php?id="+id, function() {

			var url = window.location.href;

			location.replace(url + 'galeria');

		});

	});

</script>


