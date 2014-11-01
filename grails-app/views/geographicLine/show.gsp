
<%@ page import="DataBaseModel.GeographicLine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'geographicLine.label', default: 'GeographicLine')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-geographicLine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-geographicLine" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list geographicLine">
			
				<g:if test="${geographicLineInstance?.idGeoLine}">
				<li class="fieldcontain">
					<span id="idGeoLine-label" class="property-label"><g:message code="geographicLine.idGeoLine.label" default="Id Geo Line" /></span>
					
						<span class="property-value" aria-labelledby="idGeoLine-label"><g:fieldValue bean="${geographicLineInstance}" field="idGeoLine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicLineInstance?.points}">
				<li class="fieldcontain">
					<span id="points-label" class="property-label"><g:message code="geographicLine.points.label" default="Points" /></span>
					
						<g:each in="${geographicLineInstance.points}" var="p">
						<span class="property-value" aria-labelledby="points-label"><g:link controller="geographicPoint" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${geographicLineInstance?.route}">
				<li class="fieldcontain">
					<span id="route-label" class="property-label"><g:message code="geographicLine.route.label" default="Route" /></span>
					
						<span class="property-value" aria-labelledby="route-label"><g:link controller="route" action="show" id="${geographicLineInstance?.route?.id}">${geographicLineInstance?.route?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:geographicLineInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${geographicLineInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
