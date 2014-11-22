<!DOCTYPE html>
<%@page import="DataBaseModel.Route"%>
<%@page import="grails.converters.JSON"%>
<html>
<head>
<meta name="layout" content="main2" />
<title>Rutas</title>
<%--<meta charset="utf-8">--%>
<script
	src="https://dl.dropboxusercontent.com/u/49936729/UNViajante/js/jquery.tools.min.js"></script>

<%--<script src="${resource(dir: 'js', file: 'jquery.tools.min.js')}"></script>--%>
<script src="${resource(dir: 'js', file: 'smartpaginator.js')}"></script>
<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}"type="text/css">--%>
<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'styl.css')}" type="text/css">--%>
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'smartpaginator.css')}"
	type="text/css">
<%--<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>--%>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
<script>
////////////////////////////
//variables para trazar la ruta mas corta
	var map;
	var num = 0;
	var markersRuta = [];
	var directionsService = new google.maps.DirectionsService();
	var directionsDisplay = new google.maps.DirectionsRenderer();
	
////////////////////////////

var pop = '${populations as JSON}';

pop = pop.replace(/&(lt|gt|quot);/g, function (m, p) { //Se reemplazan los "&quot;" con comillas dobles
    return (p == "lt")? "<" : (p == "gt") ? ">" : '"';
});
 
var populations = JSON.parse(pop);
var centers = new Array(populations.length);
//for(var i in populations){
//	document.write(populations[i].namePCenter);
//}

function initialize() {
	var markers = new Array(populations.length);
	var infos = new Array(populations.length);
	var names = new Array(populations.length);
	
	
	var mapOptions = {
	  zoom: 7,
	  center: new google.maps.LatLng(4.608630556, -74.07670556),
	  mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById('mapa'),
	    mapOptions);

	//Creacion de los puntos para los centros poblados
	for(var i in populations){
		centers[i] = new google.maps.LatLng(populations[i].latitude, populations[i].longitude);
		names[i] = populations[i].namePCenter;
	}

	//Creacion de los marcadores
	for(var j in centers){
		markers[j] = new google.maps.Marker({
			  position:centers[j],
			  title: names[j],
		  });
	}

	//Creacion de las infowindow
	for (var k in infos){
		infos[k] = new google.maps.InfoWindow({
			  content:"Hello World!",
		  });
	}

	//Setting de los marcadores a los mapas
    for (var k in markers){
    	markers[k].setMap(map);

    }

    
	    
	////////////////////////////
	google.maps.event.addListener(map, 'click', function(event) {
		placeMarker(event.latLng);
	});
	
	directionsDisplay.setMap(map);
	
	//quitar los markers de A y B:
	directionsDisplay.setOptions( { suppressMarkers: true } );
}

////////////////////////////

function placeMarker(location) {	
	map.setCenter(location); 
	var nMarker = nearestMarker(location);
	
	var marker = new google.maps.Marker({
		position: nMarker[1],
		map: map,
	});
	markersRuta.push(marker);
			
	  var origen = new google.maps.InfoWindow({
	  	content:'Origen'
	  });
	  
	  var destino = new google.maps.InfoWindow({
	  	content:'Destino'
	  });
	  
	  if(num==0){
	  	origen.open(map,marker);
	  	num++;
	  }
	  
	  else if(num==1){
	  	destino.open(map,marker);
	  	num++;
	  	calcRoute();
	  }
	  else if(num>1){
	  	//borrar markers
	  	deleteMarkers();
	  	//borrar ruta
	  	num=0;
	  }
}


function nearestMarker(location){
	var distances = Number.POSITIVE_INFINITY;
	var centerName = "";
	var point;
	
	for(var i=0; i<centers.length; i++){
		if(getDistance(location, centers[i]) < distances){
			distances = getDistance(location, centers[i]);
			centerName = populations[i].namePCenter;
			point = centers[i];
		}
	}
	return [centerName, point];
}

var rad = function(x) {
	  return x * Math.PI / 180;
	};

var getDistance = function(p1, p2) {
  	var R = 6378137; // Earth’s mean radius in meter
  	var dLat = rad(p2.lat() - p1.lat());
  	var dLong = rad(p2.lng() - p1.lng());
  	var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
    	Math.cos(rad(p1.lat())) * Math.cos(rad(p2.lat())) *
    	Math.sin(dLong / 2) * Math.sin(dLong / 2);
  	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
  	var d = R * c;
  	return d; // returns the distance in meter
};
// Sets the map on all markers in the array.
function setAllMap(map) {
  for (var i = 0; i < markersRuta.length; i++) {
    markersRuta[i].setMap(map);
  }
}

// Removes the markers from the map, but keeps them in the array.
function clearMarkers() {
  setAllMap(null);
}

// Deletes all markers in the array by removing references to them.
function deleteMarkers() {
  clearMarkers();
  markersRuta = [];
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

////////////////////////////

google.maps.event.addDomListener(window, 'load', initialize);

    </script>


<script type="text/javascript">
        $(document).ready(function () {
            
            $('#black-contents').css('display', 'none');
            $('ul li').click(function () {
                $('#black-contents').css('display', 'none');
                if ($(this).attr('id') == '3') $('#black-contents').css('display', '');
            });


            $('#black').smartpaginator(
               { totalrecords: ${routes?.size()},
                recordsperpage: 4,
                datacontainer: 'listaResultados', 
                dataelement: 'div',
                theme: 'black' });
        });

        function mouseSobreRuta(objeto)
        {
            objeto.style.backgroundColor= '#FFEFDD';
        }
        function mouseNoSobreRuta(objeto)
        {
            objeto.style.backgroundColor= '#F9F9F9';
        }

        function finCarga()
        {
        	if(${consult})
            {
            	document.getElementById('divResultados').style.display="block"
            }else{
            	document.getElementById('divResultados').style.display="none"
            }
        	if('${tabActiva}'=="normal")
            {
        		document.getElementById('divBusquedaAvanzada').style.display="none"
                document.getElementById('divBusqueda').style.display="block"
            }else{
            	document.getElementById('divBusquedaAvanzada').style.display="block"
                document.getElementById('divBusqueda').style.display="none"
            }
        }

        function verBusqueda()
        {
        	document.getElementById('divBusquedaAvanzada').style.display="none"
            document.getElementById('divBusqueda').style.display="block"
            document.getElementById('hidTabActiva').style.display="normal"
            initialize();
        }

        function verBusquedaAvanzada()
        {
        	document.getElementById('divBusquedaAvanzada').style.display="block"
        	document.getElementById('divBusqueda').style.display="none"
        	document.getElementById('hidTabActiva').style.display="avanzada"
        }
        
    </script>
</head>

<body onload="finCarga()">
	<%--	<div id="header">--%>
	<%--		<div id="header_in">--%>
	<%--			<h1>--%>
	<%--				<a href="/UNViajante/inicio/inicio.gsp"><asset:image--%>
	<%--						src="UNViajante.PNG" alt="Generic placeholder imag" width="155px"--%>
	<%--						height="70px" /></a>--%>
	<%--			</h1>--%>
	<%--			<div id="menu">--%>
	<%--				<ul>--%>
	<%--					<li><a href="/UNViajante/inicio/inicio.gsp">Inicio</a></li>--%>
	<%--					<li><a href="/UNViajante/route" class="active">Rutas</a></li>--%>
	<%--					<li><a href="/UNViajante/inicio/nosotros.gsp">Nosotros</a></li>--%>
	<%--				</ul>--%>
	<%--			</div>--%>
	<%--		</div>--%>
	<%--	</div>--%>
	<div id="main_part_inner">
		<div id="main_part_inner_in">
			<h2>Rutas Intermunicipales</h2>
		</div>
	</div>
	<div id="content_inner">
		<div id="divPestañasBusqueda">
			<input type="button" class="button" value="BUSQUEDA"
				onclick="verBusqueda()"> <input type="button" class="button"
				value="BUSQUEDA AVANZADA" onclick="verBusquedaAvanzada()">
		</div>
		<div id="divBusquedaAvanzada" style="display: none">
			<h3>Busca tu Ruta</h3>
			<form method="post" class="formit"
				action="/UNViajante/route/consulta">
				<input id="hidTabActiva" type="hidden" value="">
				<div>
					<table>
						<tr>
							<td><label>EMPRESA:</label></td>
							<td><label>ORIGEN:</label></td>
							<td><label>DESTINO:</label></td>
							<td><label>PRECIO:</label></td>
						</tr>

						<tr>
							<td><select name="empresa">
									<option value="-1">Selecciona..</option>
									<g:each var="company" in="${companies}">

										<option value="${company.nameCompany}">
											${company.nameCompany}
										</option>

									</g:each>
							</select></td>
							<td><select name="origen">
									<option value="-1">Selecciona..</option>
									<g:each var="population" in="${populations}">

										<option value="${population.namePCenter}">
											${population.namePCenter}
										</option>

									</g:each>
							</select></td>
							<td><select name="destino">
									<option value="-1">Selecciona..</option>
									<g:each var="population" in="${populations}">

										<option value="${population.namePCenter}">
											${population.namePCenter}
										</option>

									</g:each>
							</select></td>
							<td><select name="precio">
									<option value="-1">Selecciona..</option>
									<g:each var="price" in="${prices}">

										<option value="${price}">
											${price}
										</option>

									</g:each>
							</select></td>
						</tr>
					</table>
				</div>
				<input type="submit" class="button_submit" value="BUSCAR">
			</form>


		</div>

		<div id="divBusqueda" style="display: block">
		<h3>Busca tu Ruta</h3>
			<div class="mapit" id="mapa" style="width: 938px; height: 360px"></div>
		</div>


		<div id="divResultados" style="display: none;">
			<g:if test="${routes?.size() > 0}">
				<h3>Resultados</h3>
				<div id="listaResultados">
					<g:each var="route" in="${routes}">

						<div
							style="padding: 20px; background-color: #F9F9F9; border-bottom: 1px solid #000000; font-size: 20px; cursor: pointer;"
							onmouseover="mouseSobreRuta(this)"
							onmouseleave="mouseNoSobreRuta(this)">
							<g:link class="rutas" action="detalleRuta" id="${route.id}">
								<table>
									<tr>
										<td style="width: 460px"><strong>Origen-Destino:
										</strong> ${route.originCity} - ${route.destinyCity}</td>
										<td><strong>Precio: </strong> $ ${route.valorAproxViaje}
											pesos</td>
									</tr>
									<tr>
										<td><strong>Tiempo de Viaje: </strong> ${route.duracionViaje}
											horas</td>
										<td><strong>Empresa: </strong> ${route.company.nameCompany}</td>
									</tr>
								</table>
							</g:link>
						</div>

					</g:each>
				</div>
				<div id="black" style="margin: auto;"></div>
			</g:if>
			<g:if test="${routes?.size() <= 0}">
				<h3>No hay resultados para esta busqueda</h3>
			</g:if>
		</div>

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
	<%--	<div id="footer">--%>
	<%--		<div id="footer_in">--%>
	<%--			<p>--%>
	<%--				Copyright &copy; 2045 <a href="#">Site Name</a>. All Rights Reserved--%>
	<%--			</p>--%>
	<%--			<span>Design By: <a href="http://ries.cz">Vil&eacute;m--%>
	<%--					Ries</a></span>--%>
	<%--		</div>--%>
	<%--	</div>--%>
	<script>
		$(function() {
			$("ul.controls").tabs("div.testimonials > div");
		});
	</script>
</body>
</html>