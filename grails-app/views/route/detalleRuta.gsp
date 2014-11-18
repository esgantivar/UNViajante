<!DOCTYPE html>
<html>
<head>
<title>Rutas</title>
<meta charset="utf-8">
<script
	src="https://dl.dropboxusercontent.com/u/49936729/UNViajante/js/jquery.tools.min.js"></script>

<script
	src="${resource(dir: 'js', file: 'jquery.simplePagination.css')}"></script>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}"
	type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'styl.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'simplePagination.css')}"
	type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext'
	rel='stylesheet' type='text/css'>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
<script>
	// This example creates a 2-pixel-wide red polyline showing
	// the path of William Kingsford Smith's first trans-Pacific flight between
	// Oakland, CA, and Brisbane, Australia.
<%--HYBRID 	This map type displays a transparent layer of major streets on satellite images.--%>
	
<%--ROADMAP 	This map type displays a normal street map.--%>
	
<%--SATELLITE 	This map type displays satellite images.--%>
	
<%--TERRAIN 	This map type displays maps with physical features such as terrain and vegetation.--%>
	
<%--https://developers.google.com/maps/documentation/javascript/reference--%>
	function initialize() {
		var mapOptions = {
			zoom : 10,
			center : new google.maps.LatLng(4.608630556, -74.07670556),
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};

		var map = new google.maps.Map(document.getElementById('mapa'),
				mapOptions);

		var flightPlanCoordinates = [
				new google.maps.LatLng(4.608630556, -74.07670556),
				new google.maps.LatLng(4.608555556, -74.07658889),
				new google.maps.LatLng(4.608711111, -74.07648333),
				new google.maps.LatLng(4.608861111, -74.07669722),
				new google.maps.LatLng(4.608791667, -74.07674722),
				new google.maps.LatLng(4.608630556, -74.07670556) ];
		var flightPath = new google.maps.Polyline({
			path : flightPlanCoordinates,
			geodesic : true,
			strokeColor : '#FF0000',
			strokeOpacity : 1.0,
			strokeWeight : 2
		});

		flightPath.setMap(map);
	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>


</head>

<body>
	<div id="header">
		<div id="header_in">
			<h1>
				<a href="/UNViajante/inicio/inicio.gsp"><asset:image
						src="UNViajante.PNG" alt="Generic placeholder imag" width="155px"
						height="70px" /></a>
			</h1>
			<div id="menu">
				<ul>
					<li><a href="/UNViajante/inicio/inicio.gsp">Inicio</a></li>
					<li><a href="/UNViajante/route" class="active">Rutas</a></li>
					<li><a href="/UNViajante/inicio/nosotros.gsp">Nosotros</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="main_part_inner">
		<div id="main_part_inner_in">
			<h2>Rutas Intermunicipales</h2>
		</div>
	</div>
	<div id="content_inner">
		<h3>Informacion de la ruta</h3>

		<table>
			<tr>
				<td><strong>Nombre: </strong>${route.originCity}-${route.destinyCity}</td>
				<td><strong>Tiempo de Viaje: </strong>${route.duracionViaje} horas</td>
			</tr>
			<tr>
				<td><strong>Precio: </strong>$ ${route.valorAproxViaje}</td>
				<td><strong>Empresa: </strong>${route.company.nameCompany}</td>
			</tr>
			<tr>
				<td colspan="2"><strong>Horarios</strong></td>
			</tr>
			<tr>
				<td colspan="2">
				<ul>
				<g:each  var = "hora" in="${route.departureTimes.values()}">
					<li>${hora}</li>
				</g:each>
				</ul>
				</td>
			</tr>
		</table>

		<input type="button" class="button_submit" value="VOLVER"
			onclick="history.back()">

		<div class="cara"></div>

		<%--		<h3>Contact information</h3>--%>
		<%--		<div class="contactinfo">--%>
		<%--			<span class="ico_mapmark"><b>15th Avenue, 15 362, San--%>
		<%--					Francisco</b></span>--%>
		<%--		</div>--%>
		<%--		<div class="contactinfo">--%>
		<%--			<span class="ico_message"><b>email@domain.com</b></span>--%>
		<%--		</div>--%>
		<%--		<div class="contactinfo">--%>
		<%--			<span class="ico_iphone"><b>(+123) 456 789 012</b></span>--%>
		<%--		</div>--%>
		<hr class="cleanit">
	</div>
	<hr class="cleanit">
	<div id="footer">
		<div id="footer_in">
			<p>
				Copyright &copy; 2045 <a href="#">Site Name</a>. All Rights Reserved
			</p>
			<span>Design By: <a href="http://ries.cz">Vil&eacute;m
					Ries</a></span>
		</div>
	</div>
	<script>
		$(function() {
			$("ul.controls").tabs("div.testimonials > div");
		});
	</script>
</body>
</html>