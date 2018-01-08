
<%@ page import="org.obf.core.Parish" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parish.label', default: 'Parish')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-parish" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-parish" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list parish">
			
				<g:if test="${parishInstance?.imageParams}">
				<li class="fieldcontain">
					
					<g:img uri="${parishInstance.imageParams.url}" width="${Integer.parseInt(parishInstance.imageParams.width)/(Integer.parseInt(parishInstance.imageParams.height)/250)}" height="250"/>
				</li>
				</g:if>
			
				<g:if test="${parishInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="parish.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${parishInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="parish.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${parishInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishInstance?.parishPriest}">
				<li class="fieldcontain">
					<span id="parishPriest-label" class="property-label"><g:message code="parish.parishPriest.label" default="Parish Priest" /></span>
					
						<span class="property-value" aria-labelledby="parishPriest-label"><g:fieldValue bean="${parishInstance}" field="parishPriest"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parishInstance?.parishioners}">
				<li class="fieldcontain">
					<span id="parishioners-label" class="property-label"><g:message code="parish.parishioners.label" default="Parishioners" /></span>
					
						<g:each in="${parishInstance.parishioners}" var="p">
						<span class="property-value" aria-labelledby="parishioners-label"><g:link controller="parishioner" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:parishInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${parishInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
