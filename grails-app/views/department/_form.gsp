<%@ page import="DataBaseModel.Department" %>



<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'centers', 'error')} ">
	<label for="centers">
		<g:message code="department.centers.label" default="Centers" />
		
	</label>
	<g:select name="centers" from="${DataBaseModel.PopulationCenter.list()}" multiple="multiple" optionKey="id" size="5" value="${departmentInstance?.centers*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'idDepartment', 'error')} required">
	<label for="idDepartment">
		<g:message code="department.idDepartment.label" default="Id Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idDepartment" type="number" value="${departmentInstance.idDepartment}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="department.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${departmentInstance?.name}"/>

</div>

