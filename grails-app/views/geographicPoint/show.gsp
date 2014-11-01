
<%@ page import="DataBaseModel.GeographicPoint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'geographicPoint.label', default: 'GeographicPoint')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-geographicPoint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-geographicPoint" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list geographicPoint">
			
				<g:if test="${geographicPointInstance?.idGeoPoint}">
				<li class="fieldcontain">
					<span id="idGeoPoint-label" class="property-label"><g:message code="geographicPoint.idGeoPoint.label" default="Id Geo Point" /></span>
					
						<span class="property-value" aria-labelledby="idGeoPoint-label"><g:fieldValue bean="${geographicPointInstance}" field="idGeoPoint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicPointInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="geographicPoint.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${geographicPointInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicPointInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="geographicPoint.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${geographicPointInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${geographicPointInstance?.referenceSystem}">
				<li class="fieldcontain">
					<span id="referenceSystem-label" class="property-label"><g:message code="geographicPoint.referenceSystem.label" default="Reference System" /></span>
					
						<span class="property-value" aria-labelledby="referenceSystem-label"><g:fieldValue bean="${geographicPointInstance}" field="referenceSystem"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:geographicPointInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${geographicPointInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
