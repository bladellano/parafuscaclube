

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.0/css/font-awesome.css" />

<script type="text/javascript" src="libs/jssocials/jssocials.js"></script>

<link type="text/css" rel="stylesheet" href="libs/jssocials/jssocials.css" />

<link type="text/css" rel="stylesheet" href="libs/jssocials/jssocials-theme-flat.css" />

<style>

	html {
		min-height: 100%;
		position: relative;
	}  
	.img-noticia{
		float: left; 
		padding: 6px; 
		border-radius: 12px;
	}
	.h3-titulo{
		font-weight: bold; 
		letter-spacing: -2px; 
		text-transform: uppercase;
	}
	.data-noticia{
		color:#666;
	}

</style>


<?php 

require_once "../admin/models/Fotos.php";

$objFotos = new Fotos();

extract($_REQUEST);

?>

<div class="col-md-12">
	<p class="data-noticia">Pará Fusca Clube | <?php echo $objFotos->formatDataPtbr($data); ?></p>
	<h3 class="h3-titulo"><?php echo str_replace("\'", "'", $titulo); ?></h3>
	<p><img src="admin/<?php echo $imagem; ?>" width="280px" align="left" class="img-noticia"><?php echo $conteudo; ?></p>
</div>
<div class="col-md-12">
	<div id="share"></div>
</div>	
<div class="col-md-12">
	<?php 

	echo '<div class="fotoNoticias">';
	foreach ($objFotos->listarFotos($id_album) as $foto) {
		echo '<div><a href="admin/'.$foto["urlFoto"].'" data-lightbox="roadtrip">
		<img width="120px" heigth="120px" class="" src="admin/upload/thumbnail_'.explode("/",$foto["urlFoto"])[1].'" alt=""></a>
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
			slidesToScroll: 4,
			autoplay: true,
			autoplaySpeed: 3000,
			arrows:true,
			centerMode: true,
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
