
<%@ page import="org.obf.core.Family" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'family.label', default: 'Family')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-family" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-family" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list family">
			
				<g:if test="${familyInstance?.witness1}">
				<li class="fieldcontain">
					<span id="witness1-label" class="property-label"><g:message code="family.witness1.label" default="Witness1" /></span>
					
						<span class="property-value" aria-labelledby="witness1-label"><g:link controller="parishioner" action="show" id="${familyInstance?.witness1?.id}">${familyInstance?.witness1?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.witness2}">
				<li class="fieldcontain">
					<span id="witness2-label" class="property-label"><g:message code="family.witness2.label" default="Witness2" /></span>
					
						<span class="property-value" aria-labelledby="witness2-label"><g:link controller="parishioner" action="show" id="${familyInstance?.witness2?.id}">${familyInstance?.witness2?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.witness3}">
				<li class="fieldcontain">
					<span id="witness3-label" class="property-label"><g:message code="family.witness3.label" default="Witness3" /></span>
					
						<span class="property-value" aria-labelledby="witness3-label"><g:link controller="parishioner" action="show" id="${familyInstance?.witness3?.id}">${familyInstance?.witness3?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.imageParams}">
				<li class="fieldcontain">
					<span id="marriagePhoto-label" class="property-label"><g:message code="family.marriagePhoto.label" default="Marriage Photo" /></span>
					<g:img uri="${familyInstance.imageParams.url}" width="${Integer.parseInt(familyInstance.imageParams.width)/(Integer.parseInt(familyInstance.imageParams.height)/250)}" height="250"/>
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.children}">
				<li class="fieldcontain">
					<span id="children-label" class="property-label"><g:message code="family.children.label" default="Children" /></span>
					
						<g:each in="${familyInstance.children}" var="c">
						<span class="property-value" aria-labelledby="children-label"><g:link controller="parishioner" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.husband}">
				<li class="fieldcontain">
					<span id="husband-label" class="property-label"><g:message code="family.husband.label" default="Husband" /></span>
					
						<span class="property-value" aria-labelledby="husband-label"><g:link controller="parishioner" action="show" id="${familyInstance?.husband?.id}">${familyInstance?.husband?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.marriedByFather}">
				<li class="fieldcontain">
					<span id="marriedByFather-label" class="property-label"><g:message code="family.marriedByFather.label" default="Married By Father" /></span>
					
						<span class="property-value" aria-labelledby="marriedByFather-label"><g:fieldValue bean="${familyInstance}" field="marriedByFather"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.marriedIn}">
				<li class="fieldcontain">
					<span id="marriedIn-label" class="property-label"><g:message code="family.marriedIn.label" default="Married In" /></span>
					
						<span class="property-value" aria-labelledby="marriedIn-label"><g:link controller="parish" action="show" id="${familyInstance?.marriedIn?.id}">${familyInstance?.marriedIn?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.marriedOn}">
				<li class="fieldcontain">
					<span id="marriedOn-label" class="property-label"><g:message code="family.marriedOn.label" default="Married On" /></span>
					
						<span class="property-value" aria-labelledby="marriedOn-label"><g:formatDate date="${familyInstance?.marriedOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.subscriptions}">
				<li class="fieldcontain">
					<span id="subscriptions-label" class="property-label"><g:message code="family.subscriptions.label" default="Subscriptions" /></span>
					
						<span class="property-value" aria-labelledby="subscriptions-label"><g:fieldValue bean="${familyInstance}" field="subscriptions"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.visitsFromParishPriest}">
				<li class="fieldcontain">
					<span id="visitsFromParishPriest-label" class="property-label"><g:message code="family.visitsFromParishPriest.label" default="Visits From Parish Priest" /></span>
					
						<span class="property-value" aria-labelledby="visitsFromParishPriest-label"><g:fieldValue bean="${familyInstance}" field="visitsFromParishPriest"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyInstance?.wife}">
				<li class="fieldcontain">
					<span id="wife-label" class="property-label"><g:message code="family.wife.label" default="Wife" /></span>
					
						<span class="property-value" aria-labelledby="wife-label"><g:link controller="parishioner" action="show" id="${familyInstance?.wife?.id}">${familyInstance?.wife?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:familyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${familyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
