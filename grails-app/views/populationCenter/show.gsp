
<%@ page import="DataBaseModel.PopulationCenter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'populationCenter.label', default: 'PopulationCenter')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-populationCenter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-populationCenter" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list populationCenter">
			
				<g:if test="${populationCenterInstance?.busStops}">
				<li class="fieldcontain">
					<span id="busStops-label" class="property-label"><g:message code="populationCenter.busStops.label" default="Bus Stops" /></span>
					
						<g:each in="${populationCenterInstance.busStops}" var="b">
						<span class="property-value" aria-labelledby="busStops-label"><g:link controller="busStop" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${populationCenterInstance?.idPopulationCenter}">
				<li class="fieldcontain">
					<span id="idPopulationCenter-label" class="property-label"><g:message code="populationCenter.idPopulationCenter.label" default="Id Population Center" /></span>
					
						<span class="property-value" aria-labelledby="idPopulationCenter-label"><g:fieldValue bean="${populationCenterInstance}" field="idPopulationCenter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${populationCenterInstance?.namePCenter}">
				<li class="fieldcontain">
					<span id="namePCenter-label" class="property-label"><g:message code="populationCenter.namePCenter.label" default="Name PC enter" /></span>
					
						<span class="property-value" aria-labelledby="namePCenter-label"><g:fieldValue bean="${populationCenterInstance}" field="namePCenter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${populationCenterInstance?.terminals}">
				<li class="fieldcontain">
					<span id="terminals-label" class="property-label"><g:message code="populationCenter.terminals.label" default="Terminals" /></span>
					
						<g:each in="${populationCenterInstance.terminals}" var="t">
						<span class="property-value" aria-labelledby="terminals-label"><g:link controller="transportTerminal" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:populationCenterInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${populationCenterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
