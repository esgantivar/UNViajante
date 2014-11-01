
<%@ page import="DataBaseModel.TransportTerminal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transportTerminal.label', default: 'TransportTerminal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-transportTerminal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-transportTerminal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list transportTerminal">
			
				<g:if test="${transportTerminalInstance?.idGeoPoint}">
				<li class="fieldcontain">
					<span id="idGeoPoint-label" class="property-label"><g:message code="transportTerminal.idGeoPoint.label" default="Id Geo Point" /></span>
					
						<span class="property-value" aria-labelledby="idGeoPoint-label"><g:fieldValue bean="${transportTerminalInstance}" field="idGeoPoint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transportTerminalInstance?.idTerminal}">
				<li class="fieldcontain">
					<span id="idTerminal-label" class="property-label"><g:message code="transportTerminal.idTerminal.label" default="Id Terminal" /></span>
					
						<span class="property-value" aria-labelledby="idTerminal-label"><g:fieldValue bean="${transportTerminalInstance}" field="idTerminal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transportTerminalInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="transportTerminal.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${transportTerminalInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transportTerminalInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="transportTerminal.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${transportTerminalInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transportTerminalInstance?.nameTerminal}">
				<li class="fieldcontain">
					<span id="nameTerminal-label" class="property-label"><g:message code="transportTerminal.nameTerminal.label" default="Name Terminal" /></span>
					
						<span class="property-value" aria-labelledby="nameTerminal-label"><g:fieldValue bean="${transportTerminalInstance}" field="nameTerminal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transportTerminalInstance?.pCenter}">
				<li class="fieldcontain">
					<span id="pCenter-label" class="property-label"><g:message code="transportTerminal.pCenter.label" default="P Center" /></span>
					
						<span class="property-value" aria-labelledby="pCenter-label"><g:link controller="populationCenter" action="show" id="${transportTerminalInstance?.pCenter?.id}">${transportTerminalInstance?.pCenter?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${transportTerminalInstance?.referenceSystem}">
				<li class="fieldcontain">
					<span id="referenceSystem-label" class="property-label"><g:message code="transportTerminal.referenceSystem.label" default="Reference System" /></span>
					
						<span class="property-value" aria-labelledby="referenceSystem-label"><g:fieldValue bean="${transportTerminalInstance}" field="referenceSystem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transportTerminalInstance?.routes}">
				<li class="fieldcontain">
					<span id="routes-label" class="property-label"><g:message code="transportTerminal.routes.label" default="Routes" /></span>
					
						<g:each in="${transportTerminalInstance.routes}" var="r">
						<span class="property-value" aria-labelledby="routes-label"><g:link controller="route" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:transportTerminalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${transportTerminalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
