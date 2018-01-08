<%@ page import="org.obf.core.Family" %>



<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'witness1', 'error')} ">
	<label for="witness1">
		<g:message code="family.witness1.label" default="Witness1" />
		
	</label>
	<g:select id="witness1" name="witness1.id" from="${org.obf.core.Parishioner.list()}" optionKey="id" value="${familyInstance?.witness1?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'witness2', 'error')} ">
	<label for="witness2">
		<g:message code="family.witness2.label" default="Witness2" />
		
	</label>
	<g:select id="witness2" name="witness2.id" from="${org.obf.core.Parishioner.list()}" optionKey="id" value="${familyInstance?.witness2?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'witness3', 'error')} ">
	<label for="witness3">
		<g:message code="family.witness3.label" default="Witness3" />
		
	</label>
	<g:select id="witness3" name="witness3.id" from="${org.obf.core.Parishioner.list()}" optionKey="id" value="${familyInstance?.witness3?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'marriagePhoto', 'error')} ">
	<label for="marriagePhoto">
		<g:message code="family.marriagePhoto.label" default="Marriage Photo" />
		
	</label>
	<input type="file" id="marriagePhoto" name="marriagePhoto" />

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'children', 'error')} ">
	<label for="children">
		<g:message code="family.children.label" default="Children" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${familyInstance?.children?}" var="c">
    <li><g:link controller="parishioner" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="parishioner" action="create" params="['family.id': familyInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'parishioner.label', default: 'Parishioner')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'husband', 'error')} required">
	<label for="husband">
		<g:message code="family.husband.label" default="Husband" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="husband" name="husband.id" from="${org.obf.core.Parishioner.list()}" optionKey="id" required="" value="${familyInstance?.husband?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'marriedByFather', 'error')} required">
	<label for="marriedByFather">
		<g:message code="family.marriedByFather.label" default="Married By Father" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marriedByFather" required="" value="${familyInstance?.marriedByFather}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'marriedIn', 'error')} required">
	<label for="marriedIn">
		<g:message code="family.marriedIn.label" default="Married In" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="marriedIn" name="marriedIn.id" from="${org.obf.core.Parish.list()}" optionKey="id" required="" value="${familyInstance?.marriedIn?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'marriedOn', 'error')} required">
	<label for="marriedOn">
		<g:message code="family.marriedOn.label" default="Married On" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="marriedOn" precision="day"  value="${familyInstance?.marriedOn}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'subscriptions', 'error')} ">
	<label for="subscriptions">
		<g:message code="family.subscriptions.label" default="Subscriptions" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'visitsFromParishPriest', 'error')} ">
	<label for="visitsFromParishPriest">
		<g:message code="family.visitsFromParishPriest.label" default="Visits From Parish Priest" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: familyInstance, field: 'wife', 'error')} required">
	<label for="wife">
		<g:message code="family.wife.label" default="Wife" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="wife" name="wife.id" from="${org.obf.core.Parishioner.list()}" optionKey="id" required="" value="${familyInstance?.wife?.id}" class="many-to-one"/>

</div>

