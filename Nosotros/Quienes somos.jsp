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
		<title>SHISHA PRIME-Quienes somos</title>
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
			
			iframe {
				margin-top: 100px;
				width: 100%;
			}

			.columna {
  				width:40%;
  				float:left;
				font-size: 20px;
			}

			@media (max-width: 500px) {
  				.columna {
    				width:auto;
    				float:none;
  				}
  
			}

			textarea {
  				width: 100%;
  				height: 100px;
  				box-sizing: border-box;
  				border: 1px solid -internal-light-dark(black, white);
  				border-radius: 4px;
  				background-color: #ffffff;
  				resize: none;
			}
			
			footer{
				background-color: #00BFFF;
				margin-top: 500px;
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

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		
		<script>
			$(document).ready(function(){
  				$("button").click(function(){
      				alert("Su formulario se ha enviado con éxito. Le enviaremos su respuesta al correo.");
  				});
			});
		</script>
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
							<li><a href="..\Biblioteca\Aladin.jsp">Aladín</a></li>
							<li><a href="..\Biblioteca\Dud Boost.jsp">Dud Boost</a></li>
							<li><a href="..\Biblioteca\El Nefes.jsp">El Nefes</a></li>
							<li><a href="..\Biblioteca\Elmas.jsp">Elmas</a></li>
							<li><a href="..\Biblioteca\StarBuzz.jsp">StarBuzz</a></li>
							<li><a href="..\Biblioteca\Sabores.jsp">Sabores</a></li>
						</ul>
					</li>
					<li><a href="..\Catalogo.jsp">Catálogo</a></li>
					<li><a href="..\InterfazTienda.jsp">Tienda</a></li>
					<li><a href="..\Nosotros.jsp">Nosotros</a>
						<ul>
							
							<li><a href="Politica de privacidad.jsp">Política de privacidad</a></li>
							<li><a href="Quienes somos.jsp"><strong>Quienes somos</strong></a></li>
						</ul>
					</li>
					<li><a href="..\Noticias.jsp">Noticias</a></li>
					<li><a href="..\VistaRegistro.jsp">Hola, ${nombre}</a></li>
				</ul>
			</div>
			</nav>

			<!-- Cuerpo del sitio -->
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2923.9493776832387!2d-8.55930228431341!3d42.87391261048745!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2efe13340fb4a9%3A0x4fc23be43567aa73!2sCalle%20de%20Lope%20G%C3%B3mez%20de%20Marzoa%2C%2015705%20Santiago%20de%20Compostela%2C%20La%20Coru%C3%B1a!5e0!3m2!1ses!2ses!4v1601478369473!5m2!1ses!2ses" width="500" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			
			<div class="columna" style="margin-left:200px">
				<p>En shisha prime queremos que todos nuestros clientes queden contentos tanto con la información que le ofrecemos, como con nuestros productos. </p>
				<p>En caso de tener alguna duda o querer ampliar más tu conocimiento, nuestra plantilla cuenta con dos de los mejores  sisheros del mundo, que podréis encontrar en nuestras oficinas centrales. Para contactar con ellos lo podréis hacer mediante el formulario que tenéis a la derecha, o bien acudiendo a nuestra oficinas centrales</p>
				<p><img src= "https://www.flaticon.es/svg/static/icons/svg/633/633898.svg" widht="556" height="23"> Rúa de Lope Gómez de Marzoa, s/n, 15705 Santiago de Compostela, A Coruña</p>
				<p><img src= "https://www.flaticon.es/svg/static/icons/svg/633/633544.svg" widht="556" height="23"> 674680404</p>
				<p> <img src= "https://www.flaticon.es/svg/static/icons/svg/95/95645.svg" widht="556" height="23">
				ShishaPrime@gmail.com<p>
				<p>Horario:<p>
				<p>De Lunes a Viernes de 9h a 14h y de 16h a 20h.</p>
  			</div>

			<div class="columna" style="margin-left:150px">
				<h3>Formulario de contacto</h3>
    			<form action="/action_page.php" target="_blank">
     				<p><input class="w3-input w3-border" type="text" placeholder="Nombre" required name="Nombre y apellidos"></p>
					<p><input class="w3-input w3-border" type="text" placeholder="Apellidos" required name="Apellidos"></p>
     				<p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
     				<p><textarea>Tu duda...</textarea></p>
					<p><textarea>Mejoras de la página...</textarea></p>
        				<button class="w3-button w3-black" type="submit">
         					<i class="fa fa-paper-plane"></i> Enviar Mensaje
      					</button>
      				</p>
   				</form>
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
						<p><a href="Quienes somos.jsp">@Quienes somos</a></p>
						<p><a href="Politica de privacidad.jsp">@Política de privacidad</a></p>
					</div>
				</div>
			</footer>
		</div>
	</body>
</html>