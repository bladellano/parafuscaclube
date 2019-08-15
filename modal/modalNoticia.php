
<style>

	html {
		min-height: 100%;
		position: relative;
	}  

</style>

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.0/css/font-awesome.css" />

<script type="text/javascript" src="libs/jssocials/jssocials.js"></script>

<link type="text/css" rel="stylesheet" href="libs/jssocials/jssocials.css" />

<link type="text/css" rel="stylesheet" href="libs/jssocials/jssocials-theme-flat.css" />

<?php 

require_once "../admin/models/Fotos.php";

$objFotos = new Fotos();

extract($_REQUEST);

?>

<div class="col-md-12">
	<p style="color:#666">Pará Fusca Clube | <?php echo date('d/m/Y', strtotime($data)); ?></p>
	<h3 style="font-weight: bold; letter-spacing: -2px; text-transform: uppercase;"><?php echo str_replace("\'", "'", $titulo); ?></h3>
	<p><img src="admin/<?php echo $imagem; ?>" width="280px" align="left" style="float: left; padding: 6px; border-radius: 12px;">

		<?php echo $conteudo; ?></p>

	</div>
	<div class="col-md-12">
		<div id="share"></div>
	</div>	
	<div class="col-md-12">
		<?php 

		echo '<div class="fotoNoticias">';
		foreach ($objFotos->listarFotos($id) as $foto) {
			echo '<div><a href="admin/'.$foto["urlFoto"].'" data-lightbox="roadtrip">
			<img width="150px" class="" src="admin/upload/thumbnail_'.explode("/",$foto["urlFoto"])[1].'" alt=""></a>
			</div>';
		}

		echo '</div>';


		?>
	</div>	
	

	<script>
		
		$(document).ready(function(){

			$('.fotoNoticias').slick({
				infinite: true,
				slidesToShow: 4,
				slidesToScroll: 4
			});

			var linkurl = 'parafuscaclube.com.br';
			$("#share").jsSocials({
				showLabel: false,
				text: 'ParáFuscaClube',
				shares: ["twitter","facebook","googleplus"]
			});

			$('.fa').css('color','#fff'); //Seta como branco os icones

		});
	</script>
