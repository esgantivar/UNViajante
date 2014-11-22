<!DOCTYPE html>
<%@page import="DataBaseModel.Route"%>
<%@page import="grails.converters.JSON"%>
<html>
<head>
<meta name="layout" content="main2"/>
<title>Rutas</title>
<%--<meta charset="utf-8">--%>
<script src="https://dl.dropboxusercontent.com/u/49936729/UNViajante/js/jquery.tools.min.js"></script>

<%--<script src="${resource(dir: 'js', file: 'jquery.tools.min.js')}"></script>--%>
<script src="${resource(dir: 'js', file: 'smartpaginator.js')}"></script>
<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}"type="text/css">--%>
<%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'styl.css')}" type="text/css">--%>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'smartpaginator.css')}" type="text/css">
<%--<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>--%>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
<script>
// This example creates a 2-pixel-wide red polyline showing
// the path of William Kingsford Smith's first trans-Pacific flight between
// Oakland, CA, and Brisbane, Australia.

var pop = '${populations as JSON}';

pop = pop.replace(/&(lt|gt|quot);/g, function (m, p) { //Se reemplazan los "&quot;" con comillas dobles
    return (p == "lt")? "<" : (p == "gt") ? ">" : '"';
});
 
var populations = JSON.parse(pop);
//for(var i in populations){
//	document.write(populations[i].namePCenter);
//}



function initialize() {
	var mapOptions = {
	  zoom: 10,
	  center: new google.maps.LatLng(4.608630556, -74.07670556),
	  mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	
	var map = new google.maps.Map(document.getElementById('mapa'),
	    mapOptions);
	
	
	var flightPlanCoordinates = [        	
	   	new google.maps.LatLng(4.608630556, -74.07670556),
	   	new google.maps.LatLng(4.608555556, -74.07658889),
	   	new google.maps.LatLng(4.608711111, -74.07648333),
	   	new google.maps.LatLng(4.608861111, -74.07669722),
		new google.maps.LatLng(4.608791667, -74.07674722),
		new google.maps.LatLng(4.608630556, -74.07670556)
	];

	var flightPath = new google.maps.Polyline({
	    path: flightPlanCoordinates,
	    geodesic: true,
	    strokeColor: '#FF0000',
	    strokeOpacity: 1.0,
	    strokeWeight: 2
	});
	
	flightPath.setMap(map);
}

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
			<input type="button" class="button" value="BUSQUEDA" onclick="verBusqueda()"> 
			<input type="button" class="button" value="BUSQUEDA AVANZADA" onclick="verBusquedaAvanzada()">
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
											<td style="width: 460px"><strong>Origen-Destino: </strong> ${route.originCity}
												- ${route.destinyCity}</td>
											<td><strong>Precio: </strong> $ ${route.valorAproxViaje} pesos</td>
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