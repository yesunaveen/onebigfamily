
<%@ page import="org.obf.core.Family" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'family.label', default: 'Family')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-family" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-family" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="marriagePhoto" title="${message(code: 'family.marriagePhoto.label', default: 'Marriage Photo')}" />
					
						<th><g:message code="family.husband.label" default="Husband" /></th>
						<th><g:message code="family.wife.label" default="Wife" /></th>
					
						<g:sortableColumn property="marriedByFather" title="${message(code: 'family.marriedByFather.label', default: 'Married By Father')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${familyInstanceList}" status="i" var="familyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:img uri="${familyInstance.imageParams.url}" width="${Integer.parseInt(familyInstance.imageParams.width)/(Integer.parseInt(familyInstance.imageParams.height)/150)}" height="150"/></td>
					
						<td><g:link action="show" id="${familyInstance.id}">${fieldValue(bean: familyInstance, field: "husband")}</g:link></td>
					
						<td>${fieldValue(bean: familyInstance, field: "wife")}</td>
					
						<td>${fieldValue(bean: familyInstance, field: "marriedByFather")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${familyInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
