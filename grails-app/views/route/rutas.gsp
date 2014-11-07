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
</head>

<body>
	<div id="header">
		<div id="header_in">
			<h1>
				<a href="inicio.gsp"> <a href="inicio.gsp"><asset:image
							src="UNViajante.PNG" alt="Generic placeholder imag" width="155px"
							height="70px" /></a>
			</h1>
			</a>
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
		<h3>Busca tu Ruta</h3>
		<form method="post" class="formit" action = "/UNViajante/route/consulta">
			<select name="empresa">
				<option value="-1">Selecciona..</option>
				<g:each var="company" in="${companies}">

					<option value="${company.nameCompany}">
						${company.nameCompany}
					</option>

				</g:each>
			</select> <select name="origen">
				<option value="-1">Selecciona..</option>
				<g:each var="population" in="${populations}">

					<option value="${population.namePCenter}">
						${population.namePCenter}
					</option>

				</g:each>
			</select> <select name="destino">
				<option value="-1">Selecciona..</option>
				<g:each var="population" in="${populations}">

					<option value="${population.namePCenter}">
						${population.namePCenter}
					</option>

				</g:each>
			</select>


			<%--			<input type="text" name="email" placeholder="EMAIL"> <input--%>
			<%--				type="text" name="url" placeholder="WEBSITE (OPTIONAL)">--%>
			<input type="submit" class="button_submit" value="BUSCAR">
		</form>

		<g:if test="${routes?.size() > 0}">
			<h3>Resultados</h3>

			<g:each var="route" in="${routes}">
				<div style="padding: 20px">
					<table>
						<tr>
							<td><strong>Nombre </strong> ${route.originCity} - ${route.destinyCity}</td>
						</tr>
						<tr>
							<td><strong>Precio </strong> ${route.valorAproxViaje}</td>
						</tr>
						<tr>
							<td><strong>Tiempo </strong> ${route.duracionViaje}</td>
						</tr>
						<tr>
							<td><strong>Empresa </strong> ${route.company.nameCompany}</td>
						</tr>
						<tr>
							<td></td>
						</tr>
					</table>
				</div>
			</g:each>

		</g:if>

		<div class="cara"></div>

		<h3>Contact information</h3>
		<div class="contactinfo">
			<span class="ico_mapmark"><b>15th Avenue, 15 362, San
					Francisco</b></span>
		</div>
		<div class="contactinfo">
			<span class="ico_message"><b>email@domain.com</b></span>
		</div>
		<div class="contactinfo">
			<span class="ico_iphone"><b>(+123) 456 789 012</b></span>
		</div>
		<hr class="cleanit">
		<div class="mapit">
			<iframe width="938" height="360" frameborder="0" scrolling="no"
				marginheight="0" marginwidth="0"
				src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=San+Francisco,+CA,+United+States&amp;aq=0&amp;oq=san+f&amp;sll=37.0625,-95.677068&amp;sspn=45.553578,93.076172&amp;ie=UTF8&amp;hq=&amp;ll=37.77493,-122.419416&amp;z=14&amp;output=embed">
			</iframe>
		</div>
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