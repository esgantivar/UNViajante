
<%@ page import="DataBaseModel.TransportTerminal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transportTerminal.label', default: 'TransportTerminal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-transportTerminal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-transportTerminal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="idGeoPoint" title="${message(code: 'transportTerminal.idGeoPoint.label', default: 'Id Geo Point')}" />
					
						<g:sortableColumn property="idTerminal" title="${message(code: 'transportTerminal.idTerminal.label', default: 'Id Terminal')}" />
					
						<g:sortableColumn property="latitude" title="${message(code: 'transportTerminal.latitude.label', default: 'Latitude')}" />
					
						<g:sortableColumn property="longitude" title="${message(code: 'transportTerminal.longitude.label', default: 'Longitude')}" />
					
						<g:sortableColumn property="nameTerminal" title="${message(code: 'transportTerminal.nameTerminal.label', default: 'Name Terminal')}" />
					
						<th><g:message code="transportTerminal.pCenter.label" default="P Center" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${transportTerminalInstanceList}" status="i" var="transportTerminalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${transportTerminalInstance.id}">${fieldValue(bean: transportTerminalInstance, field: "idGeoPoint")}</g:link></td>
					
						<td>${fieldValue(bean: transportTerminalInstance, field: "idTerminal")}</td>
					
						<td>${fieldValue(bean: transportTerminalInstance, field: "latitude")}</td>
					
						<td>${fieldValue(bean: transportTerminalInstance, field: "longitude")}</td>
					
						<td>${fieldValue(bean: transportTerminalInstance, field: "nameTerminal")}</td>
					
						<td>${fieldValue(bean: transportTerminalInstance, field: "pCenter")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${transportTerminalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
