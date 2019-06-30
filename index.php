<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Pará Fusca Clube</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/menu.css"> 
	<link rel="stylesheet" href="css/slick.css">
	<link rel="stylesheet" href="css/slick-theme.css"/>
	<link rel="stylesheet" href="css/lightbox.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<link rel="stylesheet" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap" rel="stylesheet">
</head>
<body id="home">

	<!-- CRIANDO MENU -->

	<input type="checkbox" id="bt_menu">
	<label for="bt_menu">&#9776;</label>

	<nav class="menu">		
		<!-- <div class="container"> -->
			<ul>
				<li><a href="#home">Home</a></li> 
				<li><a href="#membros">Membros</a></li> 
				<li><a href="#historia">História</a></li> 
				<li><a href="#curiosidades">Curiosidades</a></li> 

				<li><a href="#">Mídias</a>
					<ul>
						<li><a href="#fotos">Fotos</a></li>
						<li><a href="#videos">Videos</a></li>
						<li><a href="#eventos">Eventos</a></li>
					</ul>
				</li>


				<li><a href="#contato">Contato</a></li>

			</ul>
			<!-- </div>  -->
			<!--container-->
		</nav>


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
				<section class="content-site" style="background-color: #6bb9f0; color:#333; text-align: justify;" id="historia">
					<div class="container">
						<p>Criado na década de 30, o fusca se espalhou em mais de 150 países, nos quatro cantos do planeta. Não há dúvidas de que, por onde passou, tornou-se um ícone, seja como Käfer, Coccinelle, Escarabajo, Vocho, Maggiolino, Fusca, Beetle ou Bug.
						Segundo o livro "The Volkswagen Beetle", a idéia de um "carro do povo" - tradução literal da palavra alemã Volkswagen para o Português - é tão antiga quanto a existência dos automóveis.</p>
						<p>Os carros "populares" da época eram extremamente pequenos, no entanto, o seu tamanho e simplicidade não significavam serem acessíveis às pessoas comuns.</p>
						<p>Ferdinand Porsche, nascido em 1875 numa cidade do império Austro-Húngaro e exímio projetista de veículos, idealizou a criação de um carro popular, o que era para muitos uma ilusão. Porém, em 1933, quando o Partido Nazista chegou ao poder, tal idéia encantou o seu então chefe, Adolph Hitler, que tinha traçado como uma de suas metas a motorização de toda a população alemã</p>
						<p>Com o apoio do governo, Porsche recebeu a quantia de 200 mil marcos para desenvolver um automóvel com as seguintes características: trafegar continuamente a 100 km/h, transportar quatro pessoas e suas malas e custar no máximo 1.000 marcos imperiais. Ao final de um período de 10 meses, entregou os primeiros protótipos Volkswagen, os VW-3.</p>
						<p>Em 1937, é criada uma empresa estatal para a fabricação dos automóveis desenvolvidos por Porsche, cujo capital inicial de 50 milhões de marcos foi proveniente do Sindicato Trabalhista Alemão e de um de seus departamentos, a KdF - Kraft durch Freude (Força pela Alegria), o que originou o nome original do fusca, o KdF-Wagen</p>
						<p>Para a apresentação do KdF-Wagen e lançamento da pedra fundamental da fábrica de Wolfsburg, o governo alemão programou uma grande festa, com a presença de seu líder, em maio de 1938. Na ocasião foram apresentados três modelos: um convencional, um cabriolet (conversível) e um com teto solar.</p>
						<p>Muito interessante também era a forma como esses automóveis iam ser vendidos: metade do seu valor deveria vir do preenchimento de um álbum de selos, comprados semanalmente.</p>
						<p>Anos depois, na década de 70, os possuidores destes "'álbuns de figurinhas" recorreram às Cortes Alemães para reaver o seu poder de compra. O resultado: um desconto na compra de um novo VW ou um pequeno reembolso.</p>
						<p>Veio a 2a. Guerra Mundial e com ela a substituição da fabricação dos KdF-Wagen por veículos militares. Os mais conhecidos são o jipe  Kübelwagen, que teve uma produção de cerca de 55 mil unidades e o anfíbio Schiwimmwagen.</p>

					</div>
				</section>

				<section class="content-site">
					<div class="container">
						<h1 class="text-center"><span>Últimos Eventos</span></h1>	

						<div class="slick">

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

				<section class="content-site" style="background-color: #eee">
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
								<p class="text-center">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>
								<br>
							</div>
						</div>
						<div class="row">						 
							<div class="col-sm-3">
								<div class="thumbnail">
									<img class="img-circle" src="img/membros/edson-marata.jpg" alt="">
									<div class="caption text-center">
										<h3>Edson Maratá</h3>
										<p>Lorem Ipsum is simply dummy text</p>
									</div>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="thumbnail">
									<img class="img-circle" src="img/membros/fabricio.jpg" alt="">
									<div class="caption text-center">
										<h3>Fabrício</h3>
										<p>Lorem Ipsum is simply dummy text</p>
									</div>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="thumbnail">
									<img class="img-circle" src="img/membros/yrapuan.jpg" alt="">
									<div class="caption text-center">
										<h3>Yrapuan</h3>
										<p>Lorem Ipsum is simply dummy text</p>
									</div>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="thumbnail">
									<img class="img-circle" src="img/membros/oliveira.jpg" alt="">
									<div class="caption text-center">
										<h3>Damião Oliveira</h3>
										<p>Lorem Ipsum is simply dummy text</p>
									</div>
								</div>
							</div>

						</div>



					</div>
				</section>

				<div class="rodape-column">
					<h3>Sobre o Pará Fusca Clube</h3>
					<p class="texto-rodape-esquerda">Minha historia  foi amor a primeira vista, foi quando observei um Fusca de perto logo fiquei apaixonado pelo carro, e o meu primeiro automóvel nao poderia ser outro a não ser  o fusquinha branco, que ate hoje nao o desprezo, e para completar  morava no Ceara quando me casei e vim com a minha esposa logo de mudança para Belém Pará no  meu querido fusquinha branco, que  é o nosso inseparável xodó . e foi ai que tudo começou, so alegrias para os dois, no nosso xodozinho Fusquinha, branco.</p>

				</div>
				<div class="rodape-column">
					<h3>Mais informações</h3>
					<p><i class="far fa-envelope"></i> E-mail: contato@parafuscaclube.com.br</p>
					<p><i class="fas fa-phone"></i> Telefone/WhatsApp: (91) 98333-1201</p>
					<p><i class="far fa-clock"></i> De segunda a sábado.</p>
					<p>

						<ul class="redes-sociais">
							<li><i class="fab fa-instagram"></i></li>
							<li><i class="fab fa-facebook-square"></i></li>
							<li><i class="fab fa-youtube"></i></li>
							<!-- <li><i class="fab fa-youtube"></i></li> -->
						</ul>
					</p>
				</div>

				<section class="footer-site">
					<div class="container">
						<div class="row">
							<div class="col-md-6 text-left">
								<p>© 2019 - Pará Fusca Clube. Todos os direitos reservados.</p>
							</div>
							<div class="col-md-6 text-right">
								<p>Desenvolvido por <img src="img/fire-logo.png" alt=""></p>
							</div>
						</div>
					</div>
				</section>


				<script src="js/jquery.min.js"></script>
				<script src="js/bootstrap.js"></script>
				<script src="js/slick.js"></script>
				<script src="js/lightbox.js"></script>
				<script src="js/functions.js"></script>


				<script>

				</script>

			</body>
			</html>