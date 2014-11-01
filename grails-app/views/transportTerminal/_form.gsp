<%@ page import="DataBaseModel.TransportTerminal" %>



<div class="fieldcontain ${hasErrors(bean: transportTerminalInstance, field: 'idGeoPoint', 'error')} required">
	<label for="idGeoPoint">
		<g:message code="transportTerminal.idGeoPoint.label" default="Id Geo Point" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idGeoPoint" type="number" value="${transportTerminalInstance.idGeoPoint}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transportTerminalInstance, field: 'idTerminal', 'error')} required">
	<label for="idTerminal">
		<g:message code="transportTerminal.idTerminal.label" default="Id Terminal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idTerminal" type="number" value="${transportTerminalInstance.idTerminal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transportTerminalInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="transportTerminal.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: transportTerminalInstance, field: 'latitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transportTerminalInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="transportTerminal.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: transportTerminalInstance, field: 'longitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transportTerminalInstance, field: 'nameTerminal', 'error')} required">
	<label for="nameTerminal">
		<g:message code="transportTerminal.nameTerminal.label" default="Name Terminal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nameTerminal" required="" value="${transportTerminalInstance?.nameTerminal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transportTerminalInstance, field: 'pCenter', 'error')} required">
	<label for="pCenter">
		<g:message code="transportTerminal.pCenter.label" default="P Center" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pCenter" name="pCenter.id" from="${DataBaseModel.PopulationCenter.list()}" optionKey="id" required="" value="${transportTerminalInstance?.pCenter?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transportTerminalInstance, field: 'referenceSystem', 'error')} required">
	<label for="referenceSystem">
		<g:message code="transportTerminal.referenceSystem.label" default="Reference System" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="referenceSystem" required="" value="${transportTerminalInstance?.referenceSystem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transportTerminalInstance, field: 'routes', 'error')} ">
	<label for="routes">
		<g:message code="transportTerminal.routes.label" default="Routes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${transportTerminalInstance?.routes?}" var="r">
    <li><g:link controller="route" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="route" action="create" params="['transportTerminal.id': transportTerminalInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'route.label', default: 'Route')])}</g:link>
</li>
</ul>


</div>

