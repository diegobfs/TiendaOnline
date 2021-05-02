<%-- Vista de la caja --%>
<%@page import="java.io.*" %>
<%@page import="ProyectoFinal.Producto" %>
<%@page import="ProyectoFinal.listaProductos" %>
<%@page import="java.util.*" %>
<%@page session="true" %>
<%@page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
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

			.cuerpo {
				margin-top: 100px;
				margin-left: 30%;
				margin-right: 30%;
				
			}

			.boton{
				text-align: center;
			}

			.imagen{
				float: left;
				clear: both;
			}
			


            footer{
				background-color: #00BFFF;
				margin-top: 100px;
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
					<li><a href="index.jsp">Inicio</a></li>
					<li><a href="Biblioteca.jsp">Biblioteca</a>
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
					<li><a href="Tienda.jsp"><strong>Tienda</strong></a></li>
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

			
				<!-- Cuerpo del sitio -->
				<div class="cuerpo">
					<hr style="clear: both; color: #00BFFF;">
					<div class="boton">
						<form method="post" action="carritoCompra">
							<p style="font: sans-serif; font-size: 30px;">Visualiza tu carrito&nbsp;&nbsp;<button type="submit" name="visualizar" value="true"> <img src= "https://www.20milproductos.com/blog/wp-content/uploads/2018/05/herramienta-dibujado-carrito-de-compras-mano_318-51871.jpg" widht="28" height="28"> </button></p>
						</form>
					</div>
					<hr style="clear: both; color: #00BFFF;">
					<c:set var="vpr" value="${lp.pr}"/>
					<c:forEach items="${vpr}" var="actual"> 
						<form method="post" action="carritoCompra">
						<div class ="imagen">
							<img src= "${actual.imagen}" widht="400" height="400">
						</div>
						<div class ="texto">
							<p>NOMBRE: ${actual.nombre}</p>
							<p>PRECIO: ${actual.precio} €</p>
							<p>UNIDADES DSIPONIBLES: ${actual.stock}</p>
							<p>Cantidad: <input type="number" name="cant" value="1" min="1"> </p>
							<p><input type="submit" name="${actual.nombre}" value="Añadir al carrito"></p>
						</div> 
						<hr style="clear: both;color: #00BFFF;">
					</form> 
					</c:forEach>
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
