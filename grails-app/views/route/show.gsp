
<%@ page import="DataBaseModel.Route" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'route.label', default: 'Route')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-route" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-route" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list route">
			
				<g:if test="${routeInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="route.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${routeInstance?.company?.id}">${routeInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeInstance?.idRoute}">
				<li class="fieldcontain">
					<span id="idRoute-label" class="property-label"><g:message code="route.idRoute.label" default="Id Route" /></span>
					
						<span class="property-value" aria-labelledby="idRoute-label"><g:fieldValue bean="${routeInstance}" field="idRoute"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeInstance?.intermediateTerminal}">
				<li class="fieldcontain">
					<span id="intermediateTerminal-label" class="property-label"><g:message code="route.intermediateTerminal.label" default="Intermediate Terminal" /></span>
					
						<span class="property-value" aria-labelledby="intermediateTerminal-label"><g:link controller="transportTerminal" action="show" id="${routeInstance?.intermediateTerminal?.id}">${routeInstance?.intermediateTerminal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeInstance?.nameRoute}">
				<li class="fieldcontain">
					<span id="nameRoute-label" class="property-label"><g:message code="route.nameRoute.label" default="Name Route" /></span>
					
						<span class="property-value" aria-labelledby="nameRoute-label"><g:fieldValue bean="${routeInstance}" field="nameRoute"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeInstance?.officialStops}">
				<li class="fieldcontain">
					<span id="officialStops-label" class="property-label"><g:message code="route.officialStops.label" default="Official Stops" /></span>
					
						<g:each in="${routeInstance.officialStops}" var="o">
						<span class="property-value" aria-labelledby="officialStops-label"><g:link controller="busStop" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${routeInstance?.positionsAvaiable}">
				<li class="fieldcontain">
					<span id="positionsAvaiable-label" class="property-label"><g:message code="route.positionsAvaiable.label" default="Positions Avaiable" /></span>
					
						<span class="property-value" aria-labelledby="positionsAvaiable-label"><g:fieldValue bean="${routeInstance}" field="positionsAvaiable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeInstance?.source}">
				<li class="fieldcontain">
					<span id="source-label" class="property-label"><g:message code="route.source.label" default="Source" /></span>
					
						<span class="property-value" aria-labelledby="source-label"><g:link controller="transportTerminal" action="show" id="${routeInstance?.source?.id}">${routeInstance?.source?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeInstance?.target}">
				<li class="fieldcontain">
					<span id="target-label" class="property-label"><g:message code="route.target.label" default="Target" /></span>
					
						<span class="property-value" aria-labelledby="target-label"><g:link controller="transportTerminal" action="show" id="${routeInstance?.target?.id}">${routeInstance?.target?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${routeInstance?.travel}">
				<li class="fieldcontain">
					<span id="travel-label" class="property-label"><g:message code="route.travel.label" default="Travel" /></span>
					
						<span class="property-value" aria-labelledby="travel-label"><g:link controller="geographicLine" action="show" id="${routeInstance?.travel?.id}">${routeInstance?.travel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:routeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${routeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
