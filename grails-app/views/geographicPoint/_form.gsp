<%@ page import="DataBaseModel.GeographicPoint" %>



<div class="fieldcontain ${hasErrors(bean: geographicPointInstance, field: 'idGeoPoint', 'error')} required">
	<label for="idGeoPoint">
		<g:message code="geographicPoint.idGeoPoint.label" default="Id Geo Point" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idGeoPoint" type="number" value="${geographicPointInstance.idGeoPoint}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicPointInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="geographicPoint.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: geographicPointInstance, field: 'latitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicPointInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="geographicPoint.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: geographicPointInstance, field: 'longitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicPointInstance, field: 'referenceSystem', 'error')} required">
	<label for="referenceSystem">
		<g:message code="geographicPoint.referenceSystem.label" default="Reference System" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="referenceSystem" required="" value="${geographicPointInstance?.referenceSystem}"/>

</div>

