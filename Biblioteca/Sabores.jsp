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
		<title>SHISHA PRIME-Sabores</title>
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
			.cuerpo{

				background: #ffffff url("https://envato-shoebox-0.imgix.net/8290/2c6c-45cd-4304-a4ce-5e0c483fc7a4/77_a2F0eWEgZnJ1aXRzMDEyNQ.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=700&s=7b2c953afc2df6ede9e79f8a8ea469a1") no-repeat center center;
				width:100%;
				
				
			}
			.texto {
				text-align: center;
				margin-top: 100px;
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
							<li><a href="Elmas.jsp">Elmas</a></li>
							<li><a href="StarBuzz.jsp">StarBuzz</a></li>
							<li><a href="Sabores.jsp"><strong>Sabores</strong></a></li>
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

			<!-- Cuerpo del sitio -->
				<div class="texto">
					<h2>Sabores</h2>
					<p>En esta sección encontrarás los sabores más típicos que habrá en el mercado.</p>
				</div>
			

			<div class="cuerpo">
				<div style="text-align:center;">
					<table border="1" style="margin: 0 auto;">
					<tr>
						<th>Nombre</th>
						<th>Descripción</th>
					</tr>
					<tr>
						<td><strong>Brutal Choice</strong></td>
						<td>Menta muy potente</td>
					</tr>
					<tr>
						<td><strong>Copa Cabana</strong></td>
						<td>Piña colada</td>
					</tr>
					<tr>
						<td><strong>Black Limusine</strong></td>
						<td>Cola y lima</td>
					</tr>
					<tr>
						<td><strong>Sexy Green</strong></td>
						<td>Menta y clorofila</td>
					</tr>
					<tr>
						<td><strong>Istanbul nights</strong></td>
						<td>Frambuesa, arandanos y fresa</td>
					</tr>
					<tr>
						<td><strong>Ice bird</strong></td>
						<td>Kiwi helado</td>
					</tr>
					<tr>
						<td><strong>Tsunami</strong></td>
						<td>Sandia, arándanos y menta</td>
					</tr>
					<tr>
						<td><strong>Medusa</strong></td>
						<td>Uva y arándano</td>
					</tr>
					<tr>
						<td><strong>Red Smoke</strong></td>
						<td>Frutas del bosque</td>
					</tr>
					<tr>
						<td><strong>Ocher smoke</strong></td>
						<td>Pomelo menta</td>
					</tr>
					<tr>
						<td><strong>Blue moon</strong></td>
						<td>Arándono y uva</td>
					</tr>
					<tr>
						<td><strong>Wild</strong></td>
						<td>Pistaño helado</td>
					</tr>
					<tr>
						<td><strong>Paradisio</strong></td>
						<td>Uva y frutas frescas</td>
					</tr>
					<tr>
						<td><strong>Athenas</strong></td>
						<td>Cereza y menta</td>
					</tr>
					<tr>
						<td><strong>París</strong></td>
						<td>Dos manzanas</td>
					</tr>
					<tr>
						<td><strong>Berlín</strong></td>
						<td>Naranja refrescante</td>
					</tr>
					</table>
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
						<p><a href="..\Nosotros\Quienes somos.jsp">@Quienes somos</a></p>
						<p><a href="..\Nosotros\Politica de privacidad.jsp">@Política de privacidad</a></p>
					</div>
				</div>
			</footer>
		</div>	
	</body>
</html>