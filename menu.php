	<meta name="viewport" content="width=device-width, initial-scale=1">

	<style>
		* {
			margin: 0;
			padding: 0;
		}
		.menu{
			width: 100%;
			height: 50px;
			background-color: #222;
			font-family: sans-serif;
		}

		.menu ul {
			list-style: none;
			position: relative;
		}

		.menu ul li {
			width: 150px;
			float: left;
		}
		.menu a {
			padding:15px;
			display: block;
			text-decoration: none;
			text-align: center;
			background-color: #222;
			color:#fff;
		}
		.menu ul ul {
			position: absolute;
			visibility: hidden;
		}
		.menu ul li:hover ul {
			visibility: visible;

		}
		.menu a:hover {
			background-color: #f4f4f4;
			color: #555;
		}
		.menu ul ul li {
			float: none;
			border-bottom: solid 1px #ccc; 
		}
		.menu ul ul li a {
			background-color: #069;
		}
		label[for="bt_menu"]{
			padding: 5px;
			background-color: #222;
			color:#fff;
			text-align: center;
			font-size: 30px;
			cursor: pointer;
			width: 50px;
			height: 40px;
		}
		#bt_menu {
			display: none;
		}
		label[for="bt_menu"]{
			display: none;
		}


		@media(max-width: 768px) {

			label[for="bt_menu"]{
				display: block;
			}


			#bt_menu:checked ~ .menu {
				margin-left: 0;
			}
			.menu {
				margin-top: 2px;
				margin-left: -100%;
				transition: all .4s;
			}
			.menu ul li {
				width: 100%;
				float: none;
			}
			.menu ul ul {
				position: static;
				overflow: hidden;
				max-height: 0;
				transition: all .4s;
			}
			.menu ul li:hover ul {
				height: auto;
				max-height: 200px;
			}
		}

	</style>

	<input type="checkbox" id="bt_menu">
	<label for="bt_menu">&#9776;</label>
	<nav class="menu">
		<ul>
			<li><a href="#">Home</a></li> 
			<li><a href="#">Serviços</a>

				<ul>
					<li><a href="#">Criação de Sites</a></li>
					<li><a href="#">Arte Visual</a></li>
				</ul>
			</li>

			<li><a href="#">Cursos</a>
				<ul>
					<li><a href="#">Java</a></li>
					<li><a href="#">Photoshop</a></li>
					<li><a href="#">HTML/CSS</a></li>
				</ul>
			</li>
			<li><a href="#">Contato</a></li>

		</ul>
	</nav>