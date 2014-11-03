<%@ page import="DataBaseModel.Route" %>
<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>
		<div>
			<h2>Rutas</h2>
			<table border="O">
				<tr>
					<th>Nombre</th>
					<th>Duracion</th>
					<th>Valor</th>
					<th>Empresa</th>
				</tr>
				<g:each var="route" in="${routes}" >
					<tr>
						<td><g:link action="show" 
									controller="route" 
									id = "${route.id}">${route.originCity}-${route.destinyCity}</g:link> 
						</td>
						<td>${route.duracionViaje}</td>
						<td>${route.valorAproxViaje}</td>
						<td>${route.company.nameCompany}</td>
					 </tr>
				</g:each>
			</table>
		</div>
	</body>
</html>