
<%@ page import="org.obf.core.Parishioner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parishioner.label', default: 'Parishioner')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-parishioner" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-parishioner" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dateOfBaptism" title="${message(code: 'parishioner.dateOfBaptism.label', default: 'Date Of Baptism')}" />
					
						<g:sortableColumn property="dateOfConfirmation" title="${message(code: 'parishioner.dateOfConfirmation.label', default: 'Date Of Confirmation')}" />
					
						<g:sortableColumn property="dateOfCommunion" title="${message(code: 'parishioner.dateOfCommunion.label', default: 'Date Of Communion')}" />
					
						<g:sortableColumn property="dateOfAnointing" title="${message(code: 'parishioner.dateOfAnointing.label', default: 'Date Of Anointing')}" />
					
						<g:sortableColumn property="dateOfDeath" title="${message(code: 'parishioner.dateOfDeath.label', default: 'Date Of Death')}" />
					
						<th><g:message code="parishioner.family.label" default="Family" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${parishionerInstanceList}" status="i" var="parishionerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${parishionerInstance.id}">${fieldValue(bean: parishionerInstance, field: "dateOfBaptism")}</g:link></td>
					
						<td><g:formatDate date="${parishionerInstance.dateOfConfirmation}" /></td>
					
						<td><g:formatDate date="${parishionerInstance.dateOfCommunion}" /></td>
					
						<td><g:formatDate date="${parishionerInstance.dateOfAnointing}" /></td>
					
						<td><g:formatDate date="${parishionerInstance.dateOfDeath}" /></td>
					
						<td>${fieldValue(bean: parishionerInstance, field: "family")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${parishionerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
