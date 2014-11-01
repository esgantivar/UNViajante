
<%@ page import="DataBaseModel.BusStop" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'busStop.label', default: 'BusStop')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-busStop" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-busStop" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="idBusStop" title="${message(code: 'busStop.idBusStop.label', default: 'Id Bus Stop')}" />
					
						<g:sortableColumn property="idGeoPoint" title="${message(code: 'busStop.idGeoPoint.label', default: 'Id Geo Point')}" />
					
						<g:sortableColumn property="latitude" title="${message(code: 'busStop.latitude.label', default: 'Latitude')}" />
					
						<g:sortableColumn property="longitude" title="${message(code: 'busStop.longitude.label', default: 'Longitude')}" />
					
						<g:sortableColumn property="nameBusStop" title="${message(code: 'busStop.nameBusStop.label', default: 'Name Bus Stop')}" />
					
						<th><g:message code="busStop.populationCenter.label" default="Population Center" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${busStopInstanceList}" status="i" var="busStopInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${busStopInstance.id}">${fieldValue(bean: busStopInstance, field: "idBusStop")}</g:link></td>
					
						<td>${fieldValue(bean: busStopInstance, field: "idGeoPoint")}</td>
					
						<td>${fieldValue(bean: busStopInstance, field: "latitude")}</td>
					
						<td>${fieldValue(bean: busStopInstance, field: "longitude")}</td>
					
						<td>${fieldValue(bean: busStopInstance, field: "nameBusStop")}</td>
					
						<td>${fieldValue(bean: busStopInstance, field: "populationCenter")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${busStopInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
