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
	var map;
	var num = 0;
	var markersRuta = [];
	var directionsService = new google.maps.DirectionsService();
	var directionsDisplay = new google.maps.DirectionsRenderer();

	function initialize() {

		var markers = new Array(2);
		var mapOptions = {
			zoom : 7,
			center : new google.maps.LatLng(4.608630556, -74.07670556),
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById('mapa'), mapOptions);

		//Creacion de los marcadores

		markers[0] = new google.maps.Marker({
			position : new google.maps.LatLng(${origenPunto[0]}, ${origenPunto[1]}),
			title : '${route.originCity}'
		});

		markers[1] = new google.maps.Marker({
			position : new google.maps.LatLng(${destinoPunto[0]}, ${destinoPunto[1]}),
			title : '${route.destinyCity}'
		});

		markersRuta.push(markers[0]);
		markersRuta.push(markers[1]); 

		//Setting de los marcadores a los mapas
		for ( var k in markers) {
			markers[k].setMap(map);

		}

		directionsDisplay.setMap(map);

		//quitar los markers de A y B:
		directionsDisplay.setOptions({
			suppressMarkers : true
		});

		calcRoute();

	}

	//funcion para calcular una ruta
	function calcRoute(){
		var request = {
			origin: new google.maps.LatLng(markersRuta[0].position.lat(), markersRuta[0].position.lng()),
			destination: new google.maps.LatLng(markersRuta[1].position.lat(), markersRuta[1].position.lng()),
			travelMode: google.maps.DirectionsTravelMode.DRIVING
			
		};
		directionsService.route(request, function(response, status) {
			if (status == google.maps.DirectionsStatus.OK){
				directionsDisplay.setDirections(response);
			}
		});
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

		<table style="font-size: 20px">
			<tr>
				<td style="text-align: center; width: 460px"><strong>Origen-Destino:
				</strong> ${route.originCity}-${route.destinyCity}</td>
				<td style="text-align: center; width: 460px"><strong>Tiempo
						de Viaje: </strong> ${route.duracionViaje} horas</td>
				<td style="text-align: center; width: 460px"><strong>Telefono:
				</strong> ${route.company.telephoneNumber.toString().replace(' ', '-')}</td>
			</tr>
			<tr>
				<td style="text-align: center; width: 460px"><strong>Precio:
				</strong>$ ${route.valorAproxViaje} pesos</td>
				<td style="text-align: center; width: 460px"><strong>Empresa:
				</strong> ${route.company.nameCompany}</td>
				<td style="text-align: center; width: 460px"><strong>Direccion:
				</strong> ${route.company.address}</td>
			</tr>
		</table>

		<div class="cara"></div>
		<hr class="cleanit">

		<table style="font-size: 20px; text-align: center;">
			<tr style="border-bottom: 1px solid #000000">
				<td colspan="7" style="text-align: center;"><strong>Horarios
						de Salida</strong></td>
			</tr>
			<tr>
				<td style="width: 140px; text-align: center;"><strong>Lunes</strong>
					<ul>

						<g:each var="hora" in="${horas[0]}">

							<li>
								${hora}
							</li>

						</g:each>
					</ul></td>
				<td style="width: 140px; text-align: center;"><strong>Martes</strong>
					<ul>
						<g:each var="hora" in="${horas[1]}">

							<li>
								${hora}
							</li>

						</g:each>
					</ul></td>
				<td style="width: 140px; text-align: center;"><strong>Miercoles</strong>
					<ul>
						<g:each var="hora" in="${horas[2]}">

							<li>
								${hora}
							</li>

						</g:each>
					</ul></td>
				<td style="width: 140px; text-align: center;"><strong>Jueves</strong>
					<ul>
						<g:each var="hora" in="${horas[3]}">

							<li>
								${hora}
							</li>

						</g:each>
					</ul></td>
				<td style="width: 140px; text-align: center;"><strong>Viernes</strong>
					<ul>
						<g:each var="hora" in="${horas[4]}">

							<li>
								${hora}
							</li>

						</g:each>
					</ul></td>
				<td style="width: 140px; text-align: center;"><strong>Sabado</strong>
					<ul>
						<g:each var="hora" in="${horas[5]}">

							<li>
								${hora}
							</li>

						</g:each>
					</ul></td>
				<td style="width: 140px; text-align: center;"><strong>Domingo</strong>
					<ul>
						<g:each var="hora" in="${horas[6]}">

							<li>
								${hora}
							</li>

						</g:each>
					</ul></td>
			</tr>
		</table>

		<div class="cara"></div>
		<hr class="cleanit">

		<div id="divBusqueda" style="display: block">
			<div class="mapit" id="mapa" style="width: 938px; height: 360px"></div>
		</div>

		<div class="cara"></div>
		<hr class="cleanit">

		<input type="button" class="button_submit" value="VOLVER"
			onclick="history.back()">

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