
<%@ page import="DataBaseModel.Route" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'route.label', default: 'Route')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-route" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-route" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="route.targetTerminal.label" default="Target Terminal" /></th>
					
						<th><g:message code="route.sourceTerminal.label" default="Source Terminal" /></th>
					
						<g:sortableColumn property="idRoute" title="${message(code: 'route.idRoute.label', default: 'Id Route')}" />
					
						<g:sortableColumn property="positionsAvaiable" title="${message(code: 'route.positionsAvaiable.label', default: 'Positions Avaiable')}" />
					
						<th><g:message code="route.company.label" default="Company" /></th>
					
						<g:sortableColumn property="destinyCity" title="${message(code: 'route.destinyCity.label', default: 'Destiny City')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${routeInstanceList}" status="i" var="routeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${routeInstance.id}">${fieldValue(bean: routeInstance, field: "targetTerminal")}</g:link></td>
					
						<td>${fieldValue(bean: routeInstance, field: "sourceTerminal")}</td>
					
						<td>${fieldValue(bean: routeInstance, field: "idRoute")}</td>
					
						<td>${fieldValue(bean: routeInstance, field: "positionsAvaiable")}</td>
					
						<td>${fieldValue(bean: routeInstance, field: "company")}</td>
					
						<td>${fieldValue(bean: routeInstance, field: "destinyCity")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${routeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
