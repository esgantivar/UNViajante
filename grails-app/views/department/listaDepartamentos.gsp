
<%@ page import="DataBaseModel.Department" %>
<!DOCTYPE html>
<html>
	<head>
		
	</head>
	<body>
		<div>
			<h2>Departamentos</h2>
			<table border="O">
				<tr>
					<th>Id Department </th>
					<th>Name</th>
				</tr>
				<g:each var="department" in="${departments}" >
					<tr>
						<td>${department.idDepartment}</td>
						<td><g:link action="show" 
									controller="department" 
									id = "${department.id}">${department.name}</g:link> 
						</td>
					</tr>
				</g:each>
			</table>
			<div class="pagination">
				<g:paginate controller="department" 
							action = "index"
							total="${totalDepartments}" />
			</div>
		</div>
	</body>
</html>
