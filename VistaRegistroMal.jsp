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
    <title>Inicio de sesión</title>
    <style>
		header{
			text-align: center;
		}
			
		nav{
  			font-family: sans-serif;
 			width: 1000px;
  			margin: 0 auto;
			margin-bot: 100px;
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

		#formulario{
			background-color: #7ff5e5;
			margin-top: 100px;
			margin-left: 35%;
			margin-right: 35%;
		}

		.boton {
			text-align: center;
		} 
		
		button{
				padding: 15px 30px;
				border-radius: 7px;
				
			}

		button>a{
			text-decoration: none;
			color: black;
		}

		A {text-decoration: none;}
		
		form{
			margin-left: 25%;
			font-size: 20px;
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
				<img src= "Images\Fondo logo.png" widht="500" height="300">

			</header>

			<!-- Menú de navegación del sitio -->
			<nav>
			<div class="navegador">
				<ul id="menu">
					<li><a href="index.html">Inicio</a></li>
					<li><a href="Biblioteca.html">Biblioteca</a>
						<ul>
							<li><a href="Biblioteca\Aladin.html">Aladín</a></li>
							<li><a href="Biblioteca\Dud Boost.html">Dud Boost</a></li>
							<li><a href="Biblioteca\El Nefes.html">El Nefes</a></li>
							<li><a href="Biblioteca\Elmas.html">Elmas</a></li>
							<li><a href="Biblioteca\StarBuzz.html">StarBuzz</a></li>
							<li><a href="Biblioteca\Sabores.html">Sabores</a></li>
						</ul>
					</li>
					<li><a href="Catalogo.html">Catálogo</a></li>
					<li><a href="Tienda.html">Tienda</a></li>
					<li><a href="Nosotros.html">Nosotros</a>
						<ul>
							
							<li><a href="Nosotros\Politica de privacidad.html">Política de privacidad</a></li>
							<li><a href="Nosotros\Quienes somos.html">Quienes somos</a></li>
						</ul>
					</li>
					<li><a href="Noticias.html">Noticias</a></li>
					<li><a href="InicioSesion.html"><strong>Iniciar sesión</strong></a></li>
				</ul>
			</div>
			</nav>
	
	<!-- Inicio de sesión -->
		<div id="formulario">

			<br>
			<strong><p style="text-align: center; font-size: 30px;">Inicio de sesión</p></strong>
            <hr><br>
            <p style="color: red; text-align: center;">EL NOMBRE O LA CONTRASEÑA ESTÁN MAL INTRODUCIDOS</p>
    		<form action="/ProyectoFinal/UsuarioNew" method="post">

        		<label class="pad_top">Nombre:</label>
            	<input type="text" name="nombre" required><br><br>
            
        		<label class="pad_top">Contraseña:</label>
				<input type="password" name="contrasena" required><br><br>
			
				<input type="submit" value="Iniciar" class="validar"><br><br>
			</form>
		
			<p class="boton"><button><a href="registrarse.html">Nuevo usuario</a></button><p><br>
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
						<p><a href="Nosotros\Quienes somos.html">@Quienes somos</a></p>
						<p><a href="Nosotros\Politica de privacidad.html">@Política de privacidad</a></p>
					</div>
				</div>
			</footer>
		</div>
	</body>
</html>