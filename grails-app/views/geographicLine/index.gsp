
<%@ page import="DataBaseModel.GeographicLine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'geographicLine.label', default: 'GeographicLine')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-geographicLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-geographicLine" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="idGeoLine" title="${message(code: 'geographicLine.idGeoLine.label', default: 'Id Geo Line')}" />
					
						<th><g:message code="geographicLine.route.label" default="Route" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${geographicLineInstanceList}" status="i" var="geographicLineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${geographicLineInstance.id}">${fieldValue(bean: geographicLineInstance, field: "idGeoLine")}</g:link></td>
					
						<td>${fieldValue(bean: geographicLineInstance, field: "route")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${geographicLineInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
