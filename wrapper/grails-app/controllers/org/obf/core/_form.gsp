<%@ page import="org.obf.core.Parishioner" %>



<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'dateOfBaptism', 'error')} ">
	<label for="dateOfBaptism">
		<g:message code="parishioner.dateOfBaptism.label" default="Date Of Baptism" />
		
	</label>
	<g:datePicker name="dateOfBaptism" precision="day"  value="${parishionerInstance?.dateOfBaptism}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'dateOfConfirmation', 'error')} ">
	<label for="dateOfConfirmation">
		<g:message code="parishioner.dateOfConfirmation.label" default="Date Of Confirmation" />
		
	</label>
	<g:datePicker name="dateOfConfirmation" precision="day"  value="${parishionerInstance?.dateOfConfirmation}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'dateOfCommunion', 'error')} ">
	<label for="dateOfCommunion">
		<g:message code="parishioner.dateOfCommunion.label" default="Date Of Communion" />
		
	</label>
	<g:datePicker name="dateOfCommunion" precision="day"  value="${parishionerInstance?.dateOfCommunion}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'dateOfAnointing', 'error')} ">
	<label for="dateOfAnointing">
		<g:message code="parishioner.dateOfAnointing.label" default="Date Of Anointing" />
		
	</label>
	<g:datePicker name="dateOfAnointing" precision="day"  value="${parishionerInstance?.dateOfAnointing}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'dateOfDeath', 'error')} ">
	<label for="dateOfDeath">
		<g:message code="parishioner.dateOfDeath.label" default="Date Of Death" />
		
	</label>
	<g:datePicker name="dateOfDeath" precision="day"  value="${parishionerInstance?.dateOfDeath}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'family', 'error')} ">
	<label for="family">
		<g:message code="parishioner.family.label" default="Family" />
		
	</label>
	<g:select id="family" name="family.id" from="${org.obf.core.Family.list()}" optionKey="id" value="${parishionerInstance?.family?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'father', 'error')} ">
	<label for="father">
		<g:message code="parishioner.father.label" default="Father" />
		
	</label>
	<g:select id="father" name="father.id" from="${org.obf.core.Parishioner.list()}" optionKey="id" value="${parishionerInstance?.father?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'mother', 'error')} ">
	<label for="mother">
		<g:message code="parishioner.mother.label" default="Mother" />
		
	</label>
	<g:select id="mother" name="mother.id" from="${org.obf.core.Parishioner.list()}" optionKey="id" value="${parishionerInstance?.mother?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'godFather', 'error')} ">
	<label for="godFather">
		<g:message code="parishioner.godFather.label" default="God Father" />
		
	</label>
	<g:select id="godFather" name="godFather.id" from="${org.obf.core.Parishioner.list()}" optionKey="id" value="${parishionerInstance?.godFather?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'godMother', 'error')} ">
	<label for="godMother">
		<g:message code="parishioner.godMother.label" default="God Mother" />
		
	</label>
	<g:select id="godMother" name="godMother.id" from="${org.obf.core.Parishioner.list()}" optionKey="id" value="${parishionerInstance?.godMother?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="parishioner.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${parishionerInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'cemetry', 'error')} required">
	<label for="cemetry">
		<g:message code="parishioner.cemetry.label" default="Cemetry" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cemetry" name="cemetry.id" from="${org.obf.core.Parish.list()}" optionKey="id" required="" value="${parishionerInstance?.cemetry?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="parishioner.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${parishionerInstance?.dateOfBirth}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="parishioner.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${parishionerInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'occupation', 'error')} required">
	<label for="occupation">
		<g:message code="parishioner.occupation.label" default="Occupation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="occupation" required="" value="${parishionerInstance?.occupation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'parish', 'error')} required">
	<label for="parish">
		<g:message code="parishioner.parish.label" default="Parish" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parish" name="parish.id" from="${org.obf.core.Parish.list()}" optionKey="id" required="" value="${parishionerInstance?.parish?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'parishOfAnointing', 'error')} required">
	<label for="parishOfAnointing">
		<g:message code="parishioner.parishOfAnointing.label" default="Parish Of Anointing" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parishOfAnointing" name="parishOfAnointing.id" from="${org.obf.core.Parish.list()}" optionKey="id" required="" value="${parishionerInstance?.parishOfAnointing?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'parishOfBaptism', 'error')} required">
	<label for="parishOfBaptism">
		<g:message code="parishioner.parishOfBaptism.label" default="Parish Of Baptism" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parishOfBaptism" name="parishOfBaptism.id" from="${org.obf.core.Parish.list()}" optionKey="id" required="" value="${parishionerInstance?.parishOfBaptism?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'parishOfBirth', 'error')} required">
	<label for="parishOfBirth">
		<g:message code="parishioner.parishOfBirth.label" default="Parish Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parishOfBirth" name="parishOfBirth.id" from="${org.obf.core.Parish.list()}" optionKey="id" required="" value="${parishionerInstance?.parishOfBirth?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'parishOfCommunion', 'error')} required">
	<label for="parishOfCommunion">
		<g:message code="parishioner.parishOfCommunion.label" default="Parish Of Communion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parishOfCommunion" name="parishOfCommunion.id" from="${org.obf.core.Parish.list()}" optionKey="id" required="" value="${parishionerInstance?.parishOfCommunion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'parishOfConfirmation', 'error')} required">
	<label for="parishOfConfirmation">
		<g:message code="parishioner.parishOfConfirmation.label" default="Parish Of Confirmation" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parishOfConfirmation" name="parishOfConfirmation.id" from="${org.obf.core.Parish.list()}" optionKey="id" required="" value="${parishionerInstance?.parishOfConfirmation?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parishionerInstance, field: 'parishOfDeath', 'error')} required">
	<label for="parishOfDeath">
		<g:message code="parishioner.parishOfDeath.label" default="Parish Of Death" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parishOfDeath" name="parishOfDeath.id" from="${org.obf.core.Parish.list()}" optionKey="id" required="" value="${parishionerInstance?.parishOfDeath?.id}" class="many-to-one"/>

</div>

