
<%@ page import="DataBaseModel.GeographicPoint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'geographicPoint.label', default: 'GeographicPoint')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-geographicPoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-geographicPoint" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="idGeoPoint" title="${message(code: 'geographicPoint.idGeoPoint.label', default: 'Id Geo Point')}" />
					
						<g:sortableColumn property="latitude" title="${message(code: 'geographicPoint.latitude.label', default: 'Latitude')}" />
					
						<g:sortableColumn property="longitude" title="${message(code: 'geographicPoint.longitude.label', default: 'Longitude')}" />
					
						<g:sortableColumn property="referenceSystem" title="${message(code: 'geographicPoint.referenceSystem.label', default: 'Reference System')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${geographicPointInstanceList}" status="i" var="geographicPointInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${geographicPointInstance.id}">${fieldValue(bean: geographicPointInstance, field: "idGeoPoint")}</g:link></td>
					
						<td>${fieldValue(bean: geographicPointInstance, field: "latitude")}</td>
					
						<td>${fieldValue(bean: geographicPointInstance, field: "longitude")}</td>
					
						<td>${fieldValue(bean: geographicPointInstance, field: "referenceSystem")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${geographicPointInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
