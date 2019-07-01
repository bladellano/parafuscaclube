<?php 
// include '_header.php';
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

		<!-- HISTORIA -->
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
						<!-- <p>Com o apoio do governo, Porsche recebeu a quantia de 200 mil marcos para desenvolver um automóvel com as seguintes características: trafegar continuamente a 100 km/h, transportar quatro pessoas e suas malas e custar no máximo 1.000 marcos imperiais. Ao final de um período de 10 meses, entregou os primeiros protótipos Volkswagen, os VW-3.</p>
						<p>Em 1937, é criada uma empresa estatal para a fabricação dos automóveis desenvolvidos por Porsche, cujo capital inicial de 50 milhões de marcos foi proveniente do Sindicato Trabalhista Alemão e de um de seus departamentos, a KdF - Kraft durch Freude (Força pela Alegria), o que originou o nome original do fusca, o KdF-Wagen</p>
						<p>Para a apresentação do KdF-Wagen e lançamento da pedra fundamental da fábrica de Wolfsburg, o governo alemão programou uma grande festa, com a presença de seu líder, em maio de 1938. Na ocasião foram apresentados três modelos: um convencional, um cabriolet (conversível) e um com teto solar.</p>
						<p>Muito interessante também era a forma como esses automóveis iam ser vendidos: metade do seu valor deveria vir do preenchimento de um álbum de selos, comprados semanalmente.</p>
						<p>Anos depois, na década de 70, os possuidores destes "'álbuns de figurinhas" recorreram às Cortes Alemães para reaver o seu poder de compra. O resultado: um desconto na compra de um novo VW ou um pequeno reembolso.</p>
						<p>Veio a 2a. Guerra Mundial e com ela a substituição da fabricação dos KdF-Wagen por veículos militares. Os mais conhecidos são o jipe  Kübelwagen, que teve uma produção de cerca de 55 mil unidades e o anfíbio Schiwimmwagen.</p> -->

					</div>
				</section>

				<section class="content-site" id="fotos">
					<div class="container">
						<h1 class="text-center"><span>Últimos Eventos</span></h1>	

						<div class="slick">

							<?php
							//LISTANDO ARQUIVOS IMAGEM DAS PASTAS
							$path = "img/eventos/reliquias-vii-graopara-29-06-19/";							
							$diretorio = dir($path);
							while($arquivo = $diretorio -> read()){

								if($arquivo != '.' && $arquivo != '..'){
									echo '<div><a href="'.$path.$arquivo.'" data-lightbox="roadtrip">
									<img class="thumnails" src="'.$path.$arquivo.'"></a></div>';
								}
							}
						// $diretorio -> close();						
							?>
							<?php
							//LISTANDO ARQUIVOS IMAGEM DAS PASTAS
							$path = "img/eventos/dia-mundial-fusca-23-06-19/";							
							$diretorio = dir($path);
							while($arquivo = $diretorio -> read()){

								if($arquivo != '.' && $arquivo != '..'){
									echo '<div><a href="'.$path.$arquivo.'" data-lightbox="roadtrip">
									<img class="thumnails" src="'.$path.$arquivo.'"></a></div>';
								}
							}
						// $diretorio -> close();						
							?>

							<?php
							$path = "img/eventos/dia-nacional-fusca-20-01-19/";
							$diretorio = dir($path);
							while($arquivo = $diretorio -> read()){
								if($arquivo != '.' && $arquivo != '..'){

									echo '<div><a href="'.$path.$arquivo.'" data-lightbox="roadtrip">
									<img class="thumnails" src="'.$path.$arquivo.'"></a></div>';
								}
							}
							$diretorio -> close();
							?>

						</div><!-- slick -->
					</div><!--container--> 
				</section>

				<section class="content-site" style="background-color: #ddd" id="videos">
					<h1 class="text-center"><span>Últimos Videos</span></h1>	
					<div class="container">
						<div class="row">
							<div class="col-md-4 text-center">
								<iframe width="100%" height="200px" src="https://www.youtube.com/embed/-96Le5XuALA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								<h4>Pará Fusca Clube - Dia Nacional do Fusca 2015 Parte 02</h4>
							</div>
							<div class="col-md-4 text-center">
								<iframe width="100%" height="200px" src="https://www.youtube.com/embed/i6PBeuouxKU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								<h4>Pará Fusca Clube - Dia Nacional do Fusca 2015 Parte 01</h4>
							</div>

							<div class="col-md-4 text-center">
								<iframe width="100%" height="200px" src="https://www.youtube.com/embed/ttpnWrc417M" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								<h4>Pará Fusca Clube e Carros Antigos do Pará</h4>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 text-center">
								<a href="https://www.youtube.com/channel/UCi6kCppWOEc8aVZMF_68nog" class="btn btn-danger" target="_blank">Todos os Videos</a>
							</div>
						</div>
					</div>	
				</section>

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
								
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/edson-marata.jpg" alt="">
										<div class="caption text-center">
											<h3>Edson Maratá</h3>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/fabricio.jpeg" alt="">
										<div class="caption text-center">
											<h3>Fabrício</h3>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/yrapuan.jpeg" alt="">
										<div class="caption text-center">
											<h3>Yrapuan</h3>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/oliveira.jpeg" alt="">
										<div class="caption text-center">
											<h3>Damião Oliveira</h3>
											
										</div>
									</div>
								</div>

								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/adiel.jpeg" alt="">
										<div class="caption text-center">
											<h3>Adiel</h3>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/agenor.jpeg" alt="">
										<div class="caption text-center">
											<h3>Agenor</h3>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/alex-carvalho.jpeg" alt="">
										<div class="caption text-center">
											<h3>Alex Carvalho</h3>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/camargo.jpeg" alt="">
										<div class="caption text-center">
											<h3>Camargo</h3>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/cristiane-paiva.jpeg" alt="">
										<div class="caption text-center">
											<h3>Cristiane Paiva</h3>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/luiz.jpeg" alt="">
										<div class="caption text-center">
											<h3>Luiz</h3>
											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/mateus-ueoka.jpeg" alt="">
										<div class="caption text-center">
											<h3>Mateus Ueoka</h3>											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/silva.jpeg" alt="">
										<div class="caption text-center">
											<h3>Silva</h3>											
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/everaldo.jpeg" alt="">
										<div class="caption text-center">
											<h3>Everaldo</h3>											
										</div>
									</div>
								</div>

								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/affonso-henrique.jpeg" alt="">
										<div class="caption text-center">
											<h3>Afonso Henrique</h3>											
										</div>
									</div>
								</div>

								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/edson-castro-fusca-83.jpeg" alt="">
										<div class="caption text-center">
											<h3>Edson Castro</h3>
											<p>Fusca 1983</p>
										</div>
									</div>
								</div>

								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/thiago-peralta-fusca-1500-bravo-1973.jpeg" alt="">
										<div class="caption text-center">
											<h3>Thiago Peralta</h3>
											<p>Fusca 1500 1973</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/fernando-albuquerque-fusca-1982-1300.jpeg" alt="">
										<div class="caption text-center">
											<h3>Fernando Albuquerque</h3>
											<p>Fusca 1300 1982</p>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/lindomar.jpeg" alt="">
										<div class="caption text-center">
											<h3>Lindomar</h3>
											<!-- <p>Fusca 1300 1982</p> -->
										</div>
									</div>
								</div>A
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/solano.jpeg" alt="">
										<div class="caption text-center">
											<h3>Solano</h3>									 
										</div>
									</div>
								</div>	
								<div class="col-sm-3">
									<div class="thumbnail">
										<img class="img-circle" src="img/membros/mauro-nunes.jpeg" alt="">
										<div class="caption text-center">
											<h3>Mauro Nunes</h3>									 
										</div>
									</div>
								</div>
							</div><!--slick-membros-->

						</div>
					</div>
				</section>

				<?php

				 // include '_footer.php'; 

				?>