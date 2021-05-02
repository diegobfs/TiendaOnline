<%-- DespliegueTomcat2 con JSP procedente de un Bean --%>
<%@page import="java.io.*" %>
<%@page import="ProyectoFinal.Usuario" %>
<%@page import="java.util.*" %>
<%@page session="true" %>
<%@page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
	<head>
		<title>SHISHA PRIME-Elmas</title>
		<style>	
			
			header{
				text-align: center;
			}
			

			nav{
				font-family: sans-serif;
 				width: 1000px;
  				margin: 0 auto;
				margin-bot: 50px;
				position: absolute;
				left: 25%;
			}
			
			ul{
  				list-style: none;
			}
			#menu li>a{
 				background-color: #00BFFF;
  				color: black;
  				padding: 10px;
  				display: block;
  				text-decoration: none;
  				min-width: 100px;
			}
			#menu li>a:hover{
  				color: black;
  				background-color: #eaeaea;
			}
			#menu>li{
  				float: left;
  				text-align:center
			}
			#menu>li>ul{
 			 display: none;
			}
			#menu>li:hover>ul {
  				display:block;
			}
			h2{
				text-align: center;
				margin-top: 100px;
			}

			.cuerpo{
				text-align: center;
			}
			
			div.gallery {
  				border: 1px solid #00BFFF;
			}

			div.gallery:hover {
  				border: 1px solid #00BFFF;
			}

			div.gallery img {
  				width: 100%;
  				height: auto;
			}

			div.desc {
  				padding: 15px;
  				text-align: center;
			}
			* {
  				box-sizing: border-box;
			}
			.responsive {
  				padding: 0 6px;
  				float: left;
  				width: 24.99999%;
			}

			@media only screen and (max-width: 700px) {
  				.responsive {
    					width: 49.99999%;
    					margin: 6px 0;
  				}
			}

			@media only screen and (max-width: 500px) {
  				.responsive {
   					 width: 100%;
  				}
			}

			.clearfix:after {
  				content: "";
  				display: table;
  				clear: both;
			}

			footer{
				background-color: #00BFFF;
				margin-top: 50px;
				font: sans-serif;
				font-size: 15px;
			}

			div.relative {
  				position: relative;
  				width: 100%;
  				height: 190px;
				bottom:0;
			} 

			.direccion{
				line-height: 8px;
			}

			div.absolute {
  				position: absolute;
				margin-top:40px;
  				left: 10%;
  				width: 400px;
  				height: 50px;
				color: black;
				float:left;
			}

			div.absolute2 {
  				position: absolute;
				margin-top:10px;
  				left: 40%;
  				width: 400px;
  				height: 50px;
				color: black;
				text-align:center;
			}

			div.absolute3 {
  				position: absolute;
				margin-top: 70px;
  				left: 80%;
  				width: 200px;
  				height: 50px;
			}
			div.absolute3 a{
				color: black;
			}

		</style>

	</head>
	<body>

		<div class="contenedor">

			<header>
				<img src= "..\Images\Fondo logo.png" widht="500" height="300">

			</header>

			<!-- Menú de navegación del sitio -->
			<nav>
			<div class="navegador">
				<ul id="menu">
					<li><a href="..\Inicio.jsp">Inicio</a></li>
					<li><a href="..\Biblioteca.jsp">Biblioteca</a>
						<ul>
							<li><a href="Aladin.jsp">Aladín</a></li>
							<li><a href="Dud Boost.jsp">Dud Boost</a></li>
							<li><a href="El Nefes.jsp">El Nefes</a></li>
							<li><a href="Elmas.jsp"><strong>Elmas</strong></a></li>
							<li><a href="StarBuzz.jsp">StarBuzz</a></li>
							<li><a href="Sabores.jsp">Sabores</a></li>
						</ul>
					</li>
					<li><a href="..\Catalogo.jsp">Catálogo</a></li>
					<li><a href="..\InterfazTienda.jsp">Tienda</a></li>
					<li><a href="..\Nosotros.jsp">Nosotros</a>
						<ul>
							
							<li><a href="..\Nosotros\Politica de privacidad.jsp">Política de privacidad</a></li>
							<li><a href="..\Nosotros\Quienes somos.jsp">Quienes somos</a></li>
						</ul>
					</li>
					<li><a href="..\Noticias.jsp">Noticias</a></li>
					<li><a href="..\VistaRegistro.jsp">Hola, ${nombre}</a></li>
				</ul>
			</div>
			</nav>
				

			<h2>Cachimbas Elmas</h2>

			<div class="cuerpo">
				<p>Las cachimbas Elmas son las sishas con más rendimiento y con una forma muy tradicional. Además destacan por el enganche de la cazoleta y por la ausencia de la purga, también conocidas como bolas de purga.</p>	
			</div>

			<div class="responsive">
  				<div class="gallery">
  					<a target="_blank" href="..\Images\Elmas 1.jpg">
   						<img src="..\Images\Elmas 1.jpg" alt="Cinque Terre" width="600" height="400">
  					</a>
  					<div class="desc">Elmas Narguile 628</div>
				</div>
			</div>

			<div class="responsive">
  				<div class="gallery">
  					<a target="_blank" href="..\Images\Elmas 2.jpg">
   						<img src="..\Images\Elmas 2.jpg" alt="Cinque Terre" width="600" height="400">
  					</a>
  					<div class="desc">Elmas Narguile</div>
				</div>
			</div>
			

			<div class="responsive">
  				<div class="gallery">
  					<a target="_blank" href="..\Images\Elmas 3.jpg">
   						<img src="..\Images\Elmas 3.jpg" alt="Cinque Terre" width="600" height="400">
  					</a>
  					<div class="desc">Elmas Narguile oriental</div>
				</div>
			</div>

			<div class="responsive">
  				<div class="gallery">
  					<a target="_blank" href="..\Images\Elmas 4.jpg">
   						<img src="..\Images\Elmas 4.jpg" alt="Cinque Terre" width="600" height="400">
  					</a>
  					<div class="desc">Elmas Narguile turco</div>
				</div>
			</div>
			<div class="clearfix"></div>

			<!-- Pie del sitio -->
			<footer>
				<div class="relative">
  					<div class="absolute">
						<p><img src= "https://www.flaticon.es/svg/static/icons/svg/633/633898.svg" widht="200" height="17">	
						Rúa de Lope Gómez de Marzoa, s/n,15705 Santiago de Compostela, A Coruña</p>

						<p> <img src= "https://www.flaticon.es/svg/static/icons/svg/633/633544.svg" widht="200" height="17">
						674680404</p>

						<p><img src= "https://www.flaticon.es/svg/static/icons/svg/95/95645.svg" widht="200" height="17">
						ShishaPrime@gmail.com</p>

					</div>

					<div class="absolute2">
						<p><strong>SHISHA PRIME</strong></p>
						
						<p>Horario:</p>
						<p>De Lunes a Viernes de 9h a 14h y de 16h a 20h.</p>

						<p>Follow us</p>
						<p>
						<img src= "https://www.flaticon.es/svg/static/icons/svg/1384/1384047.svg" widht="200" height="17">
						<img src= "https://www.flaticon.es/svg/static/icons/svg/733/733603.svg" widht="200" height="17">
						<img src= "https://www.flaticon.es/svg/static/icons/svg/1051/1051331.svg" widht="200" height="17">
						</p>
					</div>

					<div class="absolute3">
						<p><a href="..\Nosotros\Quienes somos.jsp">@Quienes somos</a></p>
						<p><a href="..\Nosotros\Politica de privacidad.jsp">@Política de privacidad</a></p>
					</div>
				</div>
			</footer>
		</div>	
	</body>
</html>