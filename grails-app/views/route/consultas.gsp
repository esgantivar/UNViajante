<%@ page import="DataBaseModel.Route" %>
<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>
		<div style = "display: inline-Block">
			<h2>Consultas por empresas</h2>
			<table border="O">
				<tr>
					<th>Empresa</th>
				</tr>
				<g:each var="company" in="${companies}" >
					<tr>
						<td><g:link action="listaPorEmpresa" 
									controller="route" 
									id = "${company.nameCompany}">${company.nameCompany}</g:link> 
						</td>
					</tr>
				</g:each>
			</table>
		</div>
		<div style = "display: inline-Block">
			<h2>Consultas por ciudades</h2>
			<table border="O">
				<tr>
					<th>Ciudad</th>
				</tr>
				<g:each var="population" in="${populations}" >
					<tr>
						<td><g:link action="listaPorCiudad" 
									controller="route" 
									id = "${population.namePCenter}">${population.namePCenter}</g:link> 
						</td>
					</tr>
				</g:each>
			</table>
		</div>	
	</body>
</html>