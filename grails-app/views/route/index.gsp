
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
					
						<th><g:message code="route.company.label" default="Company" /></th>
					
						<g:sortableColumn property="idRoute" title="${message(code: 'route.idRoute.label', default: 'Id Route')}" />
					
						<th><g:message code="route.intermediateTerminal.label" default="Intermediate Terminal" /></th>
					
						<g:sortableColumn property="nameRoute" title="${message(code: 'route.nameRoute.label', default: 'Name Route')}" />
					
						<g:sortableColumn property="positionsAvaiable" title="${message(code: 'route.positionsAvaiable.label', default: 'Positions Avaiable')}" />
					
						<th><g:message code="route.source.label" default="Source" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${routeInstanceList}" status="i" var="routeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${routeInstance.id}">${fieldValue(bean: routeInstance, field: "company")}</g:link></td>
					
						<td>${fieldValue(bean: routeInstance, field: "idRoute")}</td>
					
						<td>${fieldValue(bean: routeInstance, field: "intermediateTerminal")}</td>
					
						<td>${fieldValue(bean: routeInstance, field: "nameRoute")}</td>
					
						<td>${fieldValue(bean: routeInstance, field: "positionsAvaiable")}</td>
					
						<td>${fieldValue(bean: routeInstance, field: "source")}</td>
					
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
