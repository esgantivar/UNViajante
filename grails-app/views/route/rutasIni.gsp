<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main2"/>
<title>Rutas</title>
<%--<meta charset="utf-8">--%>
<script
	src="https://dl.dropboxusercontent.com/u/49936729/UNViajante/js/jquery.tools.min.js"></script>

<script src="${resource(dir: 'js', file: 'jquery.simplePagination.css')}"></script>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'simplePagination.css')}" type="text/css"> <link>
<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">--%>
<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'styl.css')}" type="text/css">--%>
<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'fonts.css')}" type="text/css">--%>
	
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
	<script>
		var map;
		var myCenter=new google.maps.LatLng(4.6546188,-74.1152346);
		var num = 0;
		var markers = [];
		var directionsService = new google.maps.DirectionsService();
    	var directionsDisplay = new google.maps.DirectionsRenderer();
		
				
		function initialize(){
			var mapProp = {
			  center:myCenter,
			  zoom:5,
			  mapTypeId:google.maps.MapTypeId.ROADMAP
			  };
			
			  map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
			
			  google.maps.event.addListener(map, 'click', function(event) {
			    placeMarker(event.latLng);
			  });
				directionsDisplay.setMap(map);
				//quitar los markers de A y B:
				directionsDisplay.setOptions( { suppressMarkers: true } );
		}
		
		function placeMarker(location) {	
			map.setCenter(location);
			var marker = new google.maps.Marker({
				position: location,
				map: map,
			});
  			markers.push(marker);
  			/*var infowindow = new google.maps.InfoWindow({
				content: 'Latitude: ' + location.lat() + '<br>Longitude: ' + location.lng()
			});*/
			
		  	//infowindow.open(map,marker);
		  
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
			  	num=0;
			  }
			}
		
		// Sets the map on all markers in the array.
		function setAllMap(map) {
		  for (var i = 0; i < markers.length; i++) {
		    markers[i].setMap(map);
		  }
		}
		
		// Removes the markers from the map, but keeps them in the array.
		function clearMarkers() {
		  setAllMap(null);
		}

		// Deletes all markers in the array by removing references to them.
		function deleteMarkers() {
		  clearMarkers();
		  markers = [];
		}
		
		//funcion para calcular una ruta
		function calcRoute(){
			var request = {
				origin: new google.maps.LatLng(markers[0].position.lat(), markers[0].position.lng()),
				destination: new google.maps.LatLng(markers[1].position.lat(), markers[1].position.lng()),
				travelMode: google.maps.DirectionsTravelMode.DRIVING
				//travelMode: google.maps.TravelMode[DRIVING]
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
<%--	<div id="header">--%>
<%--		<div id="header_in">--%>
<%--			<h1>--%>
<%--				<a href="/UNViajante/inicio/inicio.gsp"><asset:image--%>
<%--							src="UNViajante.PNG" alt="Generic placeholder imag" width="155px"--%>
<%--							height="70px" /></a>--%>
<%--			</h1>--%>
<%--			<div id="menu">--%>
<%--				<ul>--%>
<%--					<li><a href="/UNViajante/inicio/inicio.gsp">Inicio</a></li>--%>
<%--					<li><a href="/UNViajante/route" class="active">Rutas</a></li>--%>
<%--					<li><a href="/UNViajante/inicio/comentarios.gsp">Comentarios</a></li>--%>
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
		<h3>Busca tu Ruta</h3>
		<form method="post" class="formit" action="/UNViajante/route/consulta">
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

		<div class="cara"></div>
		<hr class="cleanit">
<%--		<div class="mapit" id="mapa" style="width:938px; height: 360px">--%>
		<div id="googleMap" style="width:800px;height:450px;">
<%--			<iframe width="938" height="360" frameborder="0" scrolling="no"--%>
<%--				marginheight="0" marginwidth="0"--%>
<%--				src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=San+Francisco,+CA,+United+States&amp;aq=0&amp;oq=san+f&amp;sll=37.0625,-95.677068&amp;sspn=45.553578,93.076172&amp;ie=UTF8&amp;hq=&amp;ll=37.77493,-122.419416&amp;z=14&amp;output=embed">--%>
<%--			</iframe>--%>
		</div>
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