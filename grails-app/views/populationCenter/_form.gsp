<%@ page import="DataBaseModel.PopulationCenter" %>



<div class="fieldcontain ${hasErrors(bean: populationCenterInstance, field: 'busStops', 'error')} ">
	<label for="busStops">
		<g:message code="populationCenter.busStops.label" default="Bus Stops" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${populationCenterInstance?.busStops?}" var="b">
    <li><g:link controller="busStop" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="busStop" action="create" params="['populationCenter.id': populationCenterInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'busStop.label', default: 'BusStop')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: populationCenterInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="populationCenter.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="department" name="department.id" from="${DataBaseModel.Department.list()}" optionKey="id" required="" value="${populationCenterInstance?.department?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: populationCenterInstance, field: 'idPopulationCenter', 'error')} required">
	<label for="idPopulationCenter">
		<g:message code="populationCenter.idPopulationCenter.label" default="Id Population Center" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idPopulationCenter" type="number" value="${populationCenterInstance.idPopulationCenter}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: populationCenterInstance, field: 'namePCenter', 'error')} required">
	<label for="namePCenter">
		<g:message code="populationCenter.namePCenter.label" default="Name PC enter" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="namePCenter" required="" value="${populationCenterInstance?.namePCenter}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: populationCenterInstance, field: 'terminals', 'error')} ">
	<label for="terminals">
		<g:message code="populationCenter.terminals.label" default="Terminals" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${populationCenterInstance?.terminals?}" var="t">
    <li><g:link controller="transportTerminal" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="transportTerminal" action="create" params="['populationCenter.id': populationCenterInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'transportTerminal.label', default: 'TransportTerminal')])}</g:link>
</li>
</ul>


</div>

