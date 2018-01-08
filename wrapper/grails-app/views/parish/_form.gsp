<%@ page import="org.obf.core.Parish" %>



<div class="fieldcontain ${hasErrors(bean: parishInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="parish.image.label" default="Image" />
		
	</label>
	<input type="file" id="image" name="image" />

</div>

<div class="fieldcontain ${hasErrors(bean: parishInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="parish.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${parishInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="parish.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${parishInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishInstance, field: 'parishPriest', 'error')} required">
	<label for="parishPriest">
		<g:message code="parish.parishPriest.label" default="Parish Priest" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="parishPriest" required="" value="${parishInstance?.parishPriest}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="parish.name.label" default="username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="parish.name.label" default="password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value=""/>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: parishInstance, field: 'parishioners', 'error')} ">
	<label for="parishioners">
		<g:message code="parish.parishioners.label" default="Parishioners" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${parishInstance?.parishioners?}" var="p">
    <li><g:link controller="parishioner" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="parishioner" action="create" params="['parish.id': parishInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'parishioner.label', default: 'Parishioner')])}</g:link>
</li>
</ul>


</div>

--%>