
<%@ page import="org.obf.core.Parishioner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parishioner.label', default: 'Parishioner')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-parishioner" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-parishioner" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list parishioner">
			
				<g:if test="${parishionerInstance?.dateOfBaptism}">
				<li class="fieldcontain">
					<span id="dateOfBaptism-label" class="property-label"><g:message code="parishioner.dateOfBaptism.label" default="Date Of Baptism" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBaptism-label"><g:formatDate date="${parishionerInstance?.dateOfBaptism}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.dateOfConfirmation}">
				<li class="fieldcontain">
					<span id="dateOfConfirmation-label" class="property-label"><g:message code="parishioner.dateOfConfirmation.label" default="Date Of Confirmation" /></span>
					
						<span class="property-value" aria-labelledby="dateOfConfirmation-label"><g:formatDate date="${parishionerInstance?.dateOfConfirmation}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.dateOfCommunion}">
				<li class="fieldcontain">
					<span id="dateOfCommunion-label" class="property-label"><g:message code="parishioner.dateOfCommunion.label" default="Date Of Communion" /></span>
					
						<span class="property-value" aria-labelledby="dateOfCommunion-label"><g:formatDate date="${parishionerInstance?.dateOfCommunion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.dateOfAnointing}">
				<li class="fieldcontain">
					<span id="dateOfAnointing-label" class="property-label"><g:message code="parishioner.dateOfAnointing.label" default="Date Of Anointing" /></span>
					
						<span class="property-value" aria-labelledby="dateOfAnointing-label"><g:formatDate date="${parishionerInstance?.dateOfAnointing}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.dateOfDeath}">
				<li class="fieldcontain">
					<span id="dateOfDeath-label" class="property-label"><g:message code="parishioner.dateOfDeath.label" default="Date Of Death" /></span>
					
						<span class="property-value" aria-labelledby="dateOfDeath-label"><g:formatDate date="${parishionerInstance?.dateOfDeath}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.family}">
				<li class="fieldcontain">
					<span id="family-label" class="property-label"><g:message code="parishioner.family.label" default="Family" /></span>
					
						<span class="property-value" aria-labelledby="family-label"><g:link controller="family" action="show" id="${parishionerInstance?.family?.id}">${parishionerInstance?.family?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.father}">
				<li class="fieldcontain">
					<span id="father-label" class="property-label"><g:message code="parishioner.father.label" default="Father" /></span>
					
						<span class="property-value" aria-labelledby="father-label"><g:link controller="parishioner" action="show" id="${parishionerInstance?.father?.id}">${parishionerInstance?.father?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.mother}">
				<li class="fieldcontain">
					<span id="mother-label" class="property-label"><g:message code="parishioner.mother.label" default="Mother" /></span>
					
						<span class="property-value" aria-labelledby="mother-label"><g:link controller="parishioner" action="show" id="${parishionerInstance?.mother?.id}">${parishionerInstance?.mother?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.godFather}">
				<li class="fieldcontain">
					<span id="godFather-label" class="property-label"><g:message code="parishioner.godFather.label" default="God Father" /></span>
					
						<span class="property-value" aria-labelledby="godFather-label"><g:link controller="parishioner" action="show" id="${parishionerInstance?.godFather?.id}">${parishionerInstance?.godFather?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.godMother}">
				<li class="fieldcontain">
					<span id="godMother-label" class="property-label"><g:message code="parishioner.godMother.label" default="God Mother" /></span>
					
						<span class="property-value" aria-labelledby="godMother-label"><g:link controller="parishioner" action="show" id="${parishionerInstance?.godMother?.id}">${parishionerInstance?.godMother?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="parishioner.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${parishionerInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.cemetry}">
				<li class="fieldcontain">
					<span id="cemetry-label" class="property-label"><g:message code="parishioner.cemetry.label" default="Cemetry" /></span>
					
						<span class="property-value" aria-labelledby="cemetry-label"><g:link controller="parish" action="show" id="${parishionerInstance?.cemetry?.id}">${parishionerInstance?.cemetry?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="parishioner.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${parishionerInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="parishioner.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${parishionerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.occupation}">
				<li class="fieldcontain">
					<span id="occupation-label" class="property-label"><g:message code="parishioner.occupation.label" default="Occupation" /></span>
					
						<span class="property-value" aria-labelledby="occupation-label"><g:fieldValue bean="${parishionerInstance}" field="occupation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.parish}">
				<li class="fieldcontain">
					<span id="parish-label" class="property-label"><g:message code="parishioner.parish.label" default="Parish" /></span>
					
						<span class="property-value" aria-labelledby="parish-label"><g:link controller="parish" action="show" id="${parishionerInstance?.parish?.id}">${parishionerInstance?.parish?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.parishOfAnointing}">
				<li class="fieldcontain">
					<span id="parishOfAnointing-label" class="property-label"><g:message code="parishioner.parishOfAnointing.label" default="Parish Of Anointing" /></span>
					
						<span class="property-value" aria-labelledby="parishOfAnointing-label"><g:link controller="parish" action="show" id="${parishionerInstance?.parishOfAnointing?.id}">${parishionerInstance?.parishOfAnointing?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.parishOfBaptism}">
				<li class="fieldcontain">
					<span id="parishOfBaptism-label" class="property-label"><g:message code="parishioner.parishOfBaptism.label" default="Parish Of Baptism" /></span>
					
						<span class="property-value" aria-labelledby="parishOfBaptism-label"><g:link controller="parish" action="show" id="${parishionerInstance?.parishOfBaptism?.id}">${parishionerInstance?.parishOfBaptism?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.parishOfBirth}">
				<li class="fieldcontain">
					<span id="parishOfBirth-label" class="property-label"><g:message code="parishioner.parishOfBirth.label" default="Parish Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="parishOfBirth-label"><g:link controller="parish" action="show" id="${parishionerInstance?.parishOfBirth?.id}">${parishionerInstance?.parishOfBirth?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.parishOfCommunion}">
				<li class="fieldcontain">
					<span id="parishOfCommunion-label" class="property-label"><g:message code="parishioner.parishOfCommunion.label" default="Parish Of Communion" /></span>
					
						<span class="property-value" aria-labelledby="parishOfCommunion-label"><g:link controller="parish" action="show" id="${parishionerInstance?.parishOfCommunion?.id}">${parishionerInstance?.parishOfCommunion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.parishOfConfirmation}">
				<li class="fieldcontain">
					<span id="parishOfConfirmation-label" class="property-label"><g:message code="parishioner.parishOfConfirmation.label" default="Parish Of Confirmation" /></span>
					
						<span class="property-value" aria-labelledby="parishOfConfirmation-label"><g:link controller="parish" action="show" id="${parishionerInstance?.parishOfConfirmation?.id}">${parishionerInstance?.parishOfConfirmation?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishionerInstance?.parishOfDeath}">
				<li class="fieldcontain">
					<span id="parishOfDeath-label" class="property-label"><g:message code="parishioner.parishOfDeath.label" default="Parish Of Death" /></span>
					
						<span class="property-value" aria-labelledby="parishOfDeath-label"><g:link controller="parish" action="show" id="${parishionerInstance?.parishOfDeath?.id}">${parishionerInstance?.parishOfDeath?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:parishionerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${parishionerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
