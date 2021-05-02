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
		<title>SHISHA PRIME-Política de privacidad</title>
			
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

			.cuerpo {
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
							
							<li><a href="Politica de privacidad.jsp"><strong>Política de privacidad</strong></a></li>
							<li><a href="Quienes somos.jsp">Quienes somos</a></li>
						</ul>
					</li>
					<li><a href="..\Noticias.jsp">Noticias</a></li>
					<li><a href="..\VistaRegistro.jsp">Hola, ${nombre}</a></li>
				</ul>
			</div>
			</nav>

			<!-- Cuerpo del sitio -->
			<div class="cuerpo">
				<h2>Política de privacidad</h2>
				<p>Con la finalidad de dar cumplimiento al artículo 10 de la <strong>Ley 34/2002 de Servicios de la Sociedad de la Información y Comercio Electrónico</strong>, informamos al usuario de nuestros datos:</p>

				<p>Denominación Social: Shisha Prime</p>
				<p>Nombre comercial: Shisha Prime</p>
				<p>Domicilio social:</p>
				<p>Teléfono:674680404</p>

				<h4>RESPONSABLE DEL TRATAMIENTO</h4>
				<p>El Responsable del Tratamiento se corresponde con el del titular de este sitio web.</p>

				<h4> DATOS TRATADOS, FINALIDADES Y PLAZOS DE CONSERVACIÓN</h4>
				<p>Datos tratados: A los efectos de la solicitud de información, contacto, cita o la suscripción de nuestros boletines y newsletter, se deberán facilitar unos datos a través de la cumplimentación del formulario dispuesto a tal efecto, en el que se indicará cuáles de ellos tienen el carácter de obligatorio.</p>
				<p>Durante la navegación obtenemos datos que nos aportan información sobre usabilidad y preferencias de los usuarios, según los términos y condiciones que se prevén expresamente en el apartado de cookies.</p>
				<p> Finalidades: Las finalidades serán las siguientes</p>
				<ol>
					<li>Contacto: El correo electrónico o el teléfono facilitado para el contacto, serán utilizados para una efectiva contestación a las cuestiones planteadas.</li>
					<li>Boletines o newsletters: El correo electrónico, el cual deberá ser verificado por el usuario, u otros similares, como pueda ser el teléfono, serán utilizados para la remisión de los boletines o newsletters, de acuerdo a sus intereses.</li>
				</ol>

				<p> Conservación. El plazo de conservación será el siguiente</p>
				<ol>
					<li>Contacto: Los datos serán borrados una vez se haya dado curso y respondido a la cuestión planteada por el usuario.</li>
					<li>Boletines o newsletters: Los datos serán tratados, desde que el usuario preste su consentimiento hasta la retirada del mismo, el cual podrá otorgarse cuantas veces quiera. En cada comunicación, el usuario encontrará un procedimiento gratuito y accesible para gestionarlo.</li>
				</ol>

				<h4>EJERCICIO DE DERECHOS</h4>
				<p>Cualquier persona tiene derecho a obtener confirmación acerca de si se está procediendo al tratamiento de datos personales que les conciernan, o no. Las personas interesadas tienen derecho a si acceder a sus datos personales, así como a solicitar la rectificación de los datos inexactos o, en su caso, solicitar su supresión cuando, entre otros motivos, los datos ya no sean necesarios para los fines que fueron recogidos.</p>
				<p>En determinadas circunstancias, los interesados podrán solicitar la limitación del tratamiento de sus datos u oponerse al tratamiento de los mismos, en cuyo caso únicamente los conservaremos para el ejercicio o la defensa de reclamaciones.</p>
				<p>Para ello, los usuarios podrán dirigir una comunicación por escrito a la dirección fiscal o dirección de correo electrónico que figuran en Quienes somos, incluyendo en ambos casos una fotocopia del documento nacional de identidad o documentación acreditativa equivalente.</p>	
				<p>En determinadas circunstancias, los interesados podrán solicitar la limitación del tratamiento de sus datos u oponerse al tratamiento de los mismos, en cuyo caso únicamente los conservaremos para el ejercicio o la defensa de reclamaciones.</p>

				<h4>LEGITIMACIÓN DEL TRATAMIENTO</h4>
				<p>La base legal para el tratamiento de los datos facilitados será el consentimiento otorgado por el usuario mediante la cumplimentación del formulario y; (ii) la satisfacción de los intereses legítimos del Responsable del Tratamiento.</p>

				<h4>DESTINATARIOS Y CESIONES</h4>
				<p>No se realizarán cesiones de datos, ni transferencias internacionales</p>
				<h3>El usuario se compromete a:</h3>
				<ol>
					<li>A hacer un uso responsable de la página.</li>
					<li>No autorizamos expresamente a que terceros puedan redirigir directamente a los contenidos concretos del sitio web.</li>
					<li>Toda la información que nos facilite el usuario debe ser veraz.</li>
					<li>Los menores de edad tienen que obtener siempre previamente el consentimiento de los padres, tutores o representantes legales, responsables últimos de todos los actos realizados por los menores a su cargo.</li>
				</ol>

				<p>Para la resolución de todas las controversias o cuestiones relacionadas con el presente sitio web o de las actividades en él desarrolladas, será de aplicación la legislación española, a la que se someten expresamente las partes, siendo competentes para la resolución de todos los conflictos derivados o relacionados con su uso los Juzgados y Tribunales de Madrid.</p>
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