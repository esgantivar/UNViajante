<%@ page import="DataBaseModel.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="company.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${companyInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'idCompany', 'error')} required">
	<label for="idCompany">
		<g:message code="company.idCompany.label" default="Id Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idCompany" type="number" value="${companyInstance.idCompany}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'nameCompany', 'error')} required">
	<label for="nameCompany">
		<g:message code="company.nameCompany.label" default="Name Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nameCompany" required="" value="${companyInstance?.nameCompany}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'routesAvailable', 'error')} ">
	<label for="routesAvailable">
		<g:message code="company.routesAvailable.label" default="Routes Available" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${companyInstance?.routesAvailable?}" var="r">
    <li><g:link controller="route" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="route" action="create" params="['company.id': companyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'route.label', default: 'Route')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'telephoneNumber', 'error')} required">
	<label for="telephoneNumber">
		<g:message code="company.telephoneNumber.label" default="Telephone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telephoneNumber" required="" value="${companyInstance?.telephoneNumber}"/>

</div>

