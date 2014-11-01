
<%@ page import="DataBaseModel.BusStop" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'busStop.label', default: 'BusStop')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-busStop" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-busStop" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list busStop">
			
				<g:if test="${busStopInstance?.idBusStop}">
				<li class="fieldcontain">
					<span id="idBusStop-label" class="property-label"><g:message code="busStop.idBusStop.label" default="Id Bus Stop" /></span>
					
						<span class="property-value" aria-labelledby="idBusStop-label"><g:fieldValue bean="${busStopInstance}" field="idBusStop"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busStopInstance?.idGeoPoint}">
				<li class="fieldcontain">
					<span id="idGeoPoint-label" class="property-label"><g:message code="busStop.idGeoPoint.label" default="Id Geo Point" /></span>
					
						<span class="property-value" aria-labelledby="idGeoPoint-label"><g:fieldValue bean="${busStopInstance}" field="idGeoPoint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busStopInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="busStop.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${busStopInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busStopInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="busStop.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${busStopInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busStopInstance?.nameBusStop}">
				<li class="fieldcontain">
					<span id="nameBusStop-label" class="property-label"><g:message code="busStop.nameBusStop.label" default="Name Bus Stop" /></span>
					
						<span class="property-value" aria-labelledby="nameBusStop-label"><g:fieldValue bean="${busStopInstance}" field="nameBusStop"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busStopInstance?.populationCenter}">
				<li class="fieldcontain">
					<span id="populationCenter-label" class="property-label"><g:message code="busStop.populationCenter.label" default="Population Center" /></span>
					
						<span class="property-value" aria-labelledby="populationCenter-label"><g:link controller="populationCenter" action="show" id="${busStopInstance?.populationCenter?.id}">${busStopInstance?.populationCenter?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${busStopInstance?.referenceSystem}">
				<li class="fieldcontain">
					<span id="referenceSystem-label" class="property-label"><g:message code="busStop.referenceSystem.label" default="Reference System" /></span>
					
						<span class="property-value" aria-labelledby="referenceSystem-label"><g:fieldValue bean="${busStopInstance}" field="referenceSystem"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:busStopInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${busStopInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
