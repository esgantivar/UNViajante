<%@ page import="DataBaseModel.Route" %>



<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'targetTerminal', 'error')} ">
	<label for="targetTerminal">
		<g:message code="route.targetTerminal.label" default="Target Terminal" />
		
	</label>
	<g:select id="targetTerminal" name="targetTerminal.id" from="${DataBaseModel.TransportTerminal.list()}" optionKey="id" value="${routeInstance?.targetTerminal?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'sourceTerminal', 'error')} ">
	<label for="sourceTerminal">
		<g:message code="route.sourceTerminal.label" default="Source Terminal" />
		
	</label>
	<g:select id="sourceTerminal" name="sourceTerminal.id" from="${DataBaseModel.TransportTerminal.list()}" optionKey="id" value="${routeInstance?.sourceTerminal?.id}" class="many-to-one" noSelection="['null': '']"/>

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

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="route.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${DataBaseModel.Company.list()}" optionKey="id" required="" value="${routeInstance?.company?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'destinyCity', 'error')} required">
	<label for="destinyCity">
		<g:message code="route.destinyCity.label" default="Destiny City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="destinyCity" required="" value="${routeInstance?.destinyCity}"/>

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

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'officialStops', 'error')} ">
	<label for="officialStops">
		<g:message code="route.officialStops.label" default="Official Stops" />
		
	</label>
	<g:select name="officialStops" from="${DataBaseModel.BusStop.list()}" multiple="multiple" optionKey="id" size="5" value="${routeInstance?.officialStops*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'originCity', 'error')} required">
	<label for="originCity">
		<g:message code="route.originCity.label" default="Origin City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="originCity" required="" value="${routeInstance?.originCity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'valorAproxViaje', 'error')} required">
	<label for="valorAproxViaje">
		<g:message code="route.valorAproxViaje.label" default="Valor Aprox Viaje" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valorAproxViaje" type="number" value="${routeInstance.valorAproxViaje}" required=""/>

</div>

