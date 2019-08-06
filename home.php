<?php 
// include '_header.php';

require_once "admin/models/Fotos.php";
require_once "admin/models/Albuns.php";
require_once "admin/models/Noticias.php";
require_once "admin/models/Videos.php";
require_once "admin/models/Membros.php";

$objFotos = new Fotos();
$objAlbum = new Albuns();
$objNoticia = new Noticias();
$objVideo = new Videos();
$objMembro = new Membros();

?>

<section class="header-site">

	<div class="container">
		<div class="row">
			<div class="col-xs-12 text-center">
				<!-- <h1 class="text-center">Bem-vindo<br> -->
					<img src="img/logo.png" alt="Logo Pará Fusca Clube">
					<p class="lead text-center">
					Somos verdadeiros apaixonados pelo fusca! E dessa paixão surgiu o Pará Fusca Clube que foi criado com o objetivo de reunir pessoas amantes desse veículo. </p>
					<p class="text-center">
						<p class="text-center">
							<a href="#" class="btn btn-danger">INSCREVA-SE</a>
						</p>
						<p class="lead text-center">Fundado em 19/07/2010</p>
						<p class="lead text-center">Fundador/Presidente: <span class="damiao">Damião Oliveira</span></p>
					</div>
				</div>
			</div>
		</section>

		<!-- História -->
		<section class="content-site historia" id="historia">
			<h1 class="text-center"><span>História</span></h1>
			<div class="container">
				<p>Criado na década de 30, o fusca se espalhou em mais de 150 países, nos quatro cantos do planeta. Não há dúvidas de que, por onde passou, tornou-se um ícone, seja como Käfer, Coccinelle, Escarabajo, Vocho, Maggiolino, Fusca, Beetle ou Bug.
				Segundo o livro "The Volkswagen Beetle", a idéia de um "carro do povo" - tradução literal da palavra alemã Volkswagen para o Português - é tão antiga quanto a existência dos automóveis.</p>
				<p>Os carros "populares" da época eram extremamente pequenos, no entanto, o seu tamanho e simplicidade não significavam serem acessíveis às pessoas comuns.</p>

				<p>Ferdinand Porsche, nascido em 1875 numa cidade do império Austro-Húngaro e exímio projetista de veículos, idealizou a criação de um carro popular, o que era para muitos uma ilusão. Porém, em 1933, quando o Partido Nazista chegou ao poder, tal idéia encantou o seu então chefe, Adolph Hitler, que tinha traçado como uma de suas metas a motorização de toda a população alemã</p>
				<div class="row text-center">
					<a href="historia" class="btn btn-danger">LEIA MAIS...</a>

				</div>
			</div>
		</section>

		<section class="content-site" id="fotos">
			<div class="container">

				<h1 class="text-center"><span>Últimos Eventos</span></h1>	

				<div class="slick">

					<?php 
					// foreach ($objFotos->paginacao()["objItens"] as $foto) {
					foreach ($objFotos->listarFotos() as $foto) {
						echo '<div><a href="admin/'.$foto["urlFoto"].'" data-lightbox="roadtrip">
						<img class="thumnails" src="admin/upload/thumbnail_'.explode("/",$foto["urlFoto"])[1].'" alt=""></a></div>';
					}

					?>

				</div><!-- slick -->
			</div><!--container--> 
		</section>

		<section class="content-site" style="background-color: #ddd" id="videos">
			<h1 class="text-center"><span>Últimos Videos</span></h1>	
			<div class="container">
				<div class="row">
					<?php 
					foreach ($objVideo->listarVideos() as $video) {						 

						echo '<div class="col-md-4 text-center">
						<iframe width="100%" height="200px" src="https://www.youtube.com/embed/'.$video['codVideo'].'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						<h4>'.$video['tituloVideo'].'</h4>
						</div>';
					}

					?>

				</div>
				<div class="row">
					<div class="col-xs-12 text-center">
						<a href="https://www.youtube.com/channel/UCi6kCppWOEc8aVZMF_68nog" class="btn btn-danger" target="_blank">Todos os Videos</a>
					</div>
				</div>
			</div>	

		</section>

		<section style="margin-top: 20px;" id="midias">
			<!-- <div class="row"> -->
				<div class="container">

					<div class="col-md-4">				 
						<div class="thumbnail">
							<div class="caption">
								<h3 class="titulo-midias">Agenda <i class="fas fa-flag-checkered"></i></h3>
								<?php 
										// "A" - agenda.
								foreach ($objNoticia->listarNoticias('A') as $noticia) {							 

									echo '<div class="media">
									<div class="media-left">
									<div class="box-data box-data-agenda">
									<b>'.date('d',strtotime($noticia['dataCaptura'])).'</b>
									'.date('M',strtotime($noticia['dataCaptura'])).'
									'.date('y').'</div>																		 
									</div>
									<div class="media-body">
									<h4 class="media-heading">'.str_replace("\'", "'", $noticia['tituloNoticia']) .'</h4>
									<p class="text-muted">'.str_replace("\'", "'", $noticia['tituloNoticia']) .' <span onclick="viewNoticia('.$noticia['idNoticia'].',\'Agenda\')" class="btn btn-warning btn-sm">Leia Mais</span></p>
									</div>
									</div>';
								}

								?>

							</div>
						</div>							 
					</div>

					<div class="col-md-4">

						<div class="thumbnail">
							<div class="caption">
								<h3 class="titulo-midias">Notícias <i class="fas fa-flag-checkered"></i></h3>
								<?php 

								foreach ($objNoticia->listarNoticias() as $noticia) {							 

									echo '<div class="media">
									<div class="media-left">
									<div class="box-data box-data-noticia"><b>'.date('d',strtotime($noticia['dataCaptura'])).'</b>
									'.date('M',strtotime($noticia['dataCaptura'])).'
									'.date('y').'</div>																		 
									</div>
									<div class="media-body">
									<h4 class="media-heading">'.str_replace("\'", "'", $noticia['tituloNoticia']) .'</h4>
									<p class="text-muted">'.str_replace("\'", "'", $noticia['tituloNoticia']) .' <span onclick="viewNoticia('.$noticia['idNoticia'].')" class="btn btn-warning btn-sm">Leia Mais</span></p>
									</div>
									</div>';

								}

								?>

							</div>
						</div> <!--thumbnail-->			

					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<div class="caption">
								<h3 class="titulo-midias">Redes Sociais <i class="fab fa-facebook"></i></h3>
								<div class="fb-page" data-href="https://www.facebook.com/parafuscaclubeoficial/" data-tabs="timeline" data-width="" data-height="" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/parafuscaclubeoficial/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/parafuscaclubeoficial/">Pará Fusca Clube</a></blockquote></div>
							</div></div>	
						</div>

					</div> <!--container-->					
				<!-- </div> -->

			</section> <!--Midias-->


			<section class="img-site" id="membros">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<h1 class="text-center"><span>Membros PFC</span></h1>

							<br>
						</div>
					</div>
					<div class="row">	
						<div class="slick-membros">
						<?php 

							foreach ($objMembro->listarMembros() as $membro) {							 

								echo '<div class="col-sm-3">
								<div class="thumbnail">
								<img class="img-circle" src="admin/'.$membro['thumb_foto'].'" alt="">
								<div class="caption text-center">
								<h3>'.$membro['nomeMembro'].'</h3>
								</div>
								</div>
								</div>';

							}

							?>
						</div><!--slick-membros-->

					</div>
				</div>
			</section>

		 