<%@ page import="DataBaseModel.Route" %>



<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'target', 'error')} ">
	<label for="target">
		<g:message code="route.target.label" default="Target" />
		
	</label>
	<g:select id="target" name="target.id" from="${DataBaseModel.TransportTerminal.list()}" optionKey="id" value="${routeInstance?.target?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'source', 'error')} ">
	<label for="source">
		<g:message code="route.source.label" default="Source" />
		
	</label>
	<g:select id="source" name="source.id" from="${DataBaseModel.TransportTerminal.list()}" optionKey="id" value="${routeInstance?.source?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'idRoute', 'error')} required">
	<label for="idRoute">
		<g:message code="route.idRoute.label" default="Id Route" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idRoute" type="number" value="${routeInstance.idRoute}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'positionsAvaiable', 'error')} required">
	<label for="positionsAvaiable">
		<g:message code="route.positionsAvaiable.label" default="Positions Avaiable" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="positionsAvaiable" type="number" value="${routeInstance.positionsAvaiable}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'duracionViaje', 'error')} required">
	<label for="duracionViaje">
		<g:message code="route.duracionViaje.label" default="Duracion Viaje" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="duracionViaje" value="${fieldValue(bean: routeInstance, field: 'duracionViaje')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'intermediateTerminal', 'error')} ">
	<label for="intermediateTerminal">
		<g:message code="route.intermediateTerminal.label" default="Intermediate Terminal" />
		
	</label>
	<g:select name="intermediateTerminal" from="${DataBaseModel.TransportTerminal.list()}" multiple="multiple" optionKey="id" size="5" value="${routeInstance?.intermediateTerminal*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'nameRoute', 'error')} required">
	<label for="nameRoute">
		<g:message code="route.nameRoute.label" default="Name Route" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nameRoute" required="" value="${routeInstance?.nameRoute}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'officialStops', 'error')} ">
	<label for="officialStops">
		<g:message code="route.officialStops.label" default="Official Stops" />
		
	</label>
	<g:select name="officialStops" from="${DataBaseModel.BusStop.list()}" multiple="multiple" optionKey="id" size="5" value="${routeInstance?.officialStops*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'valorAproxViaje', 'error')} required">
	<label for="valorAproxViaje">
		<g:message code="route.valorAproxViaje.label" default="Valor Aprox Viaje" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorAproxViaje" type="number" value="${routeInstance.valorAproxViaje}" required=""/>

</div>

