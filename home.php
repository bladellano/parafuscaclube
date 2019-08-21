
<?php 

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
<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Ficha de Inscrição</h4>
			</div>
			<div class="modal-body">

				<form id="fichaCadastroMembro">
					<div class="row">
						<div class="col-md-12"><div class="form-group">
							<label for="nome_completo">Nome Completo</label>
							<input tabindex="1" autofocus="" class="form-control" name="nome_completo" id="nome_completo" type="text">
						</div></div>
					</div>

					<div class="row">
						<div class="col-md-6"><div class="form-group">
							<label for="email">E-mail</label>
							<input tabindex="2" class="form-control" name="email" id="email" type="text">
						</div></div>
						<div class="col-md-6"><div class="form-group">
							<label for="telefone">Telefone</label>
							<input tabindex="4" class="form-control" name="telefone" id="telefone" type="text">
						</div></div>
					</div>

					<div class="row">
						<div class="col-md-6"><div class="form-group">
							<label for="endereco">Endereço</label>
							<input tabindex="3" class="form-control" name="endereco" id="endereco" type="text">
						</div></div>
						<div class="col-md-6"><div class="form-group">
							<label for="ano_fusca">Ano Fusca</label>
							<input tabindex="5" class="form-control" name="ano_fusca" id="ano_fusca" type="text">
						</div></div>
					</div>					
					<div class="row">
						<div class="col-md-12">
							<div class="g-recaptcha" data-sitekey="6LeDa7IUAAAAAAJ2XiClYhUlSx2W4woSmz4mOksN"></div>
						</div>
					</div>
					<div class="row text-center"><p></p>
						<button type="submit" class="btn btn-primary btn-membro">Gravar</button>
					</div>

				</form>
			</div>			
			
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
			</div>
		</div>

	</div>
</div> <!-- Modal -->

<div id="divAguarde"></div>

<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<section class="header-site">

	<div class="container">
		<div class="row">
			<div class="col-xs-12 text-center">
				<img class="img-sm" src="img/logo.png" alt="Logo Pará Fusca Clube">
				<p class="lead text-center">
					Somos verdadeiros apaixonados pelo fusca! E dessa paixão surgiu o Pará Fusca Clube que foi criado com o objetivo de reunir pessoas amantes desse veículo. 
				</p>
				<p class="text-center">

					<p class="text-center">
						<a href="#" class="btn btn-danger" data-toggle="modal" data-target="#myModal">INSCREVA-SE</a>
					</p>
					<p class="lead text-center">Fundado em 19/07/2010</p>
					<p class="lead text-center">Fundador/Presidente: <span class="damiao">Damião Oliveira</span></p>
				</div>
			</div>
		</div>
	</section>

	<!-- História -->
	<section class="content-site historia" id="historia">
		<h2 class="text-center"><span>História</span></h2>
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

			<h2 class="text-center"><span>Últimos Eventos</span></h2>	

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
		<h2 class="text-center"><span>Últimos Videos</span></h2>	
		<div class="container">
			<div class="row">
				<?php 

				foreach ($objVideo->listarVideos('LIMIT 3') as $video) {						 

					echo '<div class="col-md-4 text-center">
					<iframe width="100%" height="200px" src="https://www.youtube.com/embed/'.$video['codVideo'].'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					<h4>'.$video['tituloVideo'].'</h4>
					</div>';
				}

				?>

			</div>
			<div class="row">
				<div class="col-xs-12 text-center">
					<a href="videos" class="btn btn-danger">Todos os Videos</a>
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
							<h2 class="text-center"><span>Membros PFC</span></h2>

							<br>
						</div>
					</div>
					<div class="row">

						<div class="slick-membros">
							<?php 

							foreach ($objMembro->listarMembros() as $membro) {							 

								echo '<div class="col-sm-3">
								<div class="thumbnail">
								<img  class="img-circle" src="admin/'.$membro['thumb_foto'].'" alt="Foto Membro" >
								<div class="caption text-center">

								<a data-trigger="focus" data-toggle="popover" data-content="Nome: '.$membro['nomeMembro'].'<br>E-mail: '.$membro['email'].'<br>Telefone: '.$membro['telefone'].'<br>Ano Fusca: '.$membro['anoFusca'].'" title="Perfil do Membro" data-placement="top"><i class="fas fa-info-circle"></i>
								</a>
								<h3>
								'.$membro['nomeMembro'].'
								</h3>
								</div>
								</div>
								</div>';

							}

							?>
						</div><!--slick-membros-->

					</div>
				</div>
			</section>

			<section id="form-contato">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<h2 class="text-center"><span>Formulário de Contato</span></h2>
						</div>
					</div>

					<div class="row">
						<div class="col-md-3"></div><!--Espaço para centralizar o form-->
						<div class="col-md-6"> 

							<form name="form-contato" method="POST">
								<div class="form-group">
									<div class="row">
										<div class="col-md-6"> 
											<input type="text" class="form-control afasta-input-form" placeholder="Nome" required name="nome">
										</div>
										<div class="col-md-6"> 
											<input type="email" class="form-control input-ajust" placeholder="E-mail" required name="email">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-6"> 
											<input type="text" class="form-control afasta-input-form " placeholder="Telefone" required name="telefone">
										</div>
										<div class="col-md-6"> 
											<input type="text" class="form-control input-ajust" placeholder="Empresa" name="empresa">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-12"> 
											<input type="text" class="form-control" placeholder="Assunto" required name="assunto">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-md-12"> 
											<textarea name="mensagem"  cols="40" rows="5" class="form-control" placeholder="Mensagem" required></textarea> 
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="g-recaptcha" data-sitekey="6LeDa7IUAAAAAAJ2XiClYhUlSx2W4woSmz4mOksN"></div>
									</div>
								</div><p></p>
								<div class="row">
									<div class="col-md-12 text-center">
										<button class="btn btn-danger">ENVIAR</button>
									</div>
								</div>
							</form>
						</div>
						<div class="col-md-3"></div> <!--Espaço para centralizar o form-->
					</div>			
				</div>
			</section>

