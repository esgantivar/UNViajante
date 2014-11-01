<%@ page import="DataBaseModel.BusStop" %>



<div class="fieldcontain ${hasErrors(bean: busStopInstance, field: 'idBusStop', 'error')} required">
	<label for="idBusStop">
		<g:message code="busStop.idBusStop.label" default="Id Bus Stop" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idBusStop" type="number" value="${busStopInstance.idBusStop}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: busStopInstance, field: 'idGeoPoint', 'error')} required">
	<label for="idGeoPoint">
		<g:message code="busStop.idGeoPoint.label" default="Id Geo Point" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idGeoPoint" type="number" value="${busStopInstance.idGeoPoint}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: busStopInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="busStop.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: busStopInstance, field: 'latitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: busStopInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="busStop.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: busStopInstance, field: 'longitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: busStopInstance, field: 'nameBusStop', 'error')} required">
	<label for="nameBusStop">
		<g:message code="busStop.nameBusStop.label" default="Name Bus Stop" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nameBusStop" required="" value="${busStopInstance?.nameBusStop}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: busStopInstance, field: 'populationCenter', 'error')} required">
	<label for="populationCenter">
		<g:message code="busStop.populationCenter.label" default="Population Center" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="populationCenter" name="populationCenter.id" from="${DataBaseModel.PopulationCenter.list()}" optionKey="id" required="" value="${busStopInstance?.populationCenter?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: busStopInstance, field: 'referenceSystem', 'error')} required">
	<label for="referenceSystem">
		<g:message code="busStop.referenceSystem.label" default="Reference System" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="referenceSystem" required="" value="${busStopInstance?.referenceSystem}"/>

</div>

