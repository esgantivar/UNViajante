<%@ page import="DataBaseModel.GeographicLine" %>



<div class="fieldcontain ${hasErrors(bean: geographicLineInstance, field: 'idGeoLine', 'error')} required">
	<label for="idGeoLine">
		<g:message code="geographicLine.idGeoLine.label" default="Id Geo Line" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idGeoLine" type="number" value="${geographicLineInstance.idGeoLine}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicLineInstance, field: 'points', 'error')} ">
	<label for="points">
		<g:message code="geographicLine.points.label" default="Points" />
		
	</label>
	<g:select name="points" from="${DataBaseModel.GeographicPoint.list()}" multiple="multiple" optionKey="id" size="5" value="${geographicLineInstance?.points*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: geographicLineInstance, field: 'route', 'error')} required">
	<label for="route">
		<g:message code="geographicLine.route.label" default="Route" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="route" name="route.id" from="${DataBaseModel.Route.list()}" optionKey="id" required="" value="${geographicLineInstance?.route?.id}" class="many-to-one"/>

</div>

