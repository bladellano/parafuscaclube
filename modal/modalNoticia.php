
<style>
	html {
		min-height: 100%;
		position: relative;
	}  

</style>

<script type="text/javascript" src="libs/jssocials/jssocials.js"></script>

<link type="text/css" rel="stylesheet" href="libs/jssocials/jssocials.css" />

<link type="text/css" rel="stylesheet" href="libs/jssocials/jssocials-theme-flat.css" />

<?php 

extract($_REQUEST);

?>

<p style="color:#666">Pará Fusca Clube | <?php echo date('d/m/Y', strtotime($data)); ?></p>
<h3 style="font-weight: bold; letter-spacing: -2px; text-transform: uppercase;"><?php echo str_replace("\'", "'", $titulo); ?></h3>
<p><img src="admin/<?php echo $imagem; ?>" width="280px" align="left" style="float: left; padding: 6px; border-radius: 12px;">

	<?php echo $conteudo; ?></p>

	<div id="share"></div>

	<script>
		$("#share").jsSocials({
			showCount: false,
			showLabel: false,
			shares: [
			{ share: "twitter", via: "artem_tabalin", hashtags: "search,google" },
			"facebook",
			"googleplus",
			"linkedin",
			"whatsapp"
			]
		});

	</script>
