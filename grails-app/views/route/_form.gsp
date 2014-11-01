<%@ page import="DataBaseModel.Route" %>



<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="route.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${DataBaseModel.Company.list()}" optionKey="id" required="" value="${routeInstance?.company?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'idRoute', 'error')} required">
	<label for="idRoute">
		<g:message code="route.idRoute.label" default="Id Route" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idRoute" type="number" value="${routeInstance.idRoute}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'intermediateTerminal', 'error')} required">
	<label for="intermediateTerminal">
		<g:message code="route.intermediateTerminal.label" default="Intermediate Terminal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="intermediateTerminal" name="intermediateTerminal.id" from="${DataBaseModel.TransportTerminal.list()}" optionKey="id" required="" value="${routeInstance?.intermediateTerminal?.id}" class="many-to-one"/>

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

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'positionsAvaiable', 'error')} required">
	<label for="positionsAvaiable">
		<g:message code="route.positionsAvaiable.label" default="Positions Avaiable" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="positionsAvaiable" type="number" value="${routeInstance.positionsAvaiable}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'source', 'error')} required">
	<label for="source">
		<g:message code="route.source.label" default="Source" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="source" name="source.id" from="${DataBaseModel.TransportTerminal.list()}" optionKey="id" required="" value="${routeInstance?.source?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'target', 'error')} required">
	<label for="target">
		<g:message code="route.target.label" default="Target" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="target" name="target.id" from="${DataBaseModel.TransportTerminal.list()}" optionKey="id" required="" value="${routeInstance?.target?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: routeInstance, field: 'travel', 'error')} required">
	<label for="travel">
		<g:message code="route.travel.label" default="Travel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="travel" name="travel.id" from="${DataBaseModel.GeographicLine.list()}" optionKey="id" required="" value="${routeInstance?.travel?.id}" class="many-to-one"/>

</div>

