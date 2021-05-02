<%-- DespliegueTomcat2 con JSP procedente de un Bean --%>
<%@page import="java.io.*" %>
<%@page import="ProyectoFinal.Usuario" %>
<%@page import="java.util.*" %>
<%@page session="true" %>
<%@page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>

<html>
	<head>
		<title>SHISHA PRIME-Biblioteca</title>
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
			.explicación{
				text-align: center;
				margin-top: 100px;
				margin-bot: 100px;
				margin-left: 10%;
				margin-right: 10%;
			}

			.cuerpo{
				column-count:2;
				margin-left: 10%;
			
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

		<!-- Loading HTML -->
		<div class="loading show">
    		<div class="spin"></div>
		</div>

		<div class="contenedor">
		
			<header>
				<img src= "Images\Fondo logo.png" widht="500" height="300">

			</header>

			<!-- Menú de navegación del sitio -->
			<nav>
			<div class="navegador">
				<ul id="menu">
					<li><a href="Inicio.jsp">Inicio</a></li>
					<li><a href="Biblioteca.jsp"><strong>Biblioteca</strong></a>
						<ul>
							<li><a href="Biblioteca\Aladin.jsp">Aladín</a></li>
							<li><a href="Biblioteca\Dud Boost.jsp">Dud Boost</a></li>
							<li><a href="Biblioteca\El Nefes.jsp">El Nefes</a></li>
							<li><a href="Biblioteca\Elmas.jsp">Elmas</a></li>
							<li><a href="Biblioteca\StarBuzz.jsp">StarBuzz</a></li>
							<li><a href="Biblioteca\Sabores.jsp">Sabores</a></li>
						</ul>
					</li>
					<li><a href="Catalogo.jsp">Catálogo</a></li>
					<li><a href="InterfazTienda.jsp">Tienda</a></li>
					<li><a href="Nosotros.jsp">Nosotros</a>
						<ul>
							
							<li><a href="Nosotros\Politica de privacidad.jsp">Política de privacidad</a></li>
							<li><a href="Nosotros\Quienes somos.jsp">Quienes somos</a></li>
						</ul>
					</li>
					<li><a href="Noticias.jsp">Noticias</a></li>
					<li><a href="VistaRegistro.jsp">Hola, ${nombre}</a></li>
				</ul>
			</div>
			</nav>
			
			<div class= "explicación">
				<h2> ¿Qué es una cachimba? </h2>
				<p>La cachimba, shisha, hookah, narguile o pipa oriental es un aparato que se prepara para fumar tabaco para cachimba. Antiguamente, concretamente en el mundo árabe e hindú creían que el humo de la combustión de este tabaco se purificaba al pasar por el agua, por lo que podía fumar tabaco de una manera menos dañina. Por último, este objecto no se lo podía permitir todo el mundo así que era considerado símbolo de distinción y poder</p>
				<h2>Partes de una cachimba</h2>
			</div>
			
			<div class="cuerpo">
				<div class="Partes">
					<dl>
						<dt><strong>Cazoleta</strong></dt>
							<dd>Parte superior de la cachimba, dónde se deposita el tabaco cuyo material es resistente a la calor.</dd>
						<dt><strong>Goma de cazoleta</strong></dt>
							<dd>Une el mástil con la cazoleta.</dd>
						<dt><strong>Cenicero</strong></dt>
							<dd>Pieza que sirve para depositar las cenizas y carbones.</dd>
						<dt><strong>Mástil</strong></dt>
							<dd>Pieza que conecta la cazoleta con la base.</dd>
						<dt><strong>Sello de base</strong></dt>
							<dd>Pieza que une herméticamente el cuerpo con la base.</dd>
						<dt><strong>Manguera</strong></dt>
							<dd>Piieza por la cual se aspira el humo.</dd>
						<dt><strong>Base</strong></dt>
							<dd>Pieza en la que se deposita el agua para limpiar el humo.</dd>

					</dl>
				</div>

				<div class="Imagen">
					<img src="Images\Biblioteca 1.jpg" widht="500"height="400">
				
				</div>
			
			</div>

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
						<p><a href="Nosotros\Quienes somos.jsp">@Quienes somos</a></p>
						<p><a href="Nosotros\Politica de privacidad.jsp">@Política de privacidad</a></p>
					</div>
				</div>
			</footer>
		</div>	
	</body>
</html>
