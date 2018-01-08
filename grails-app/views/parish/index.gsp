
<%@ page import="org.obf.core.Parish" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parish.label', default: 'Parish')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-parish" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-parish" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="imageParams" title="${message(code: 'parish.imageParams.label', default: 'Image')}" />					
						<g:sortableColumn property="name" title="${message(code: 'parish.name.label', default: 'Name')}" />
						<g:sortableColumn property="address" title="${message(code: 'parish.address.label', default: 'Address')}" />
						<g:sortableColumn property="parishPriest" title="${message(code: 'parish.parishPriest.label', default: 'Parish Priest')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${parishInstanceList}" status="i" var="parishInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:img uri="${parishInstance.imageParams.url}" width="${Integer.parseInt(parishInstance.imageParams.width)/(Integer.parseInt(parishInstance.imageParams.height)/150) + 1}" height="150"/></td>
						<td><g:link action="show" id="${parishInstance.id}">${fieldValue(bean: parishInstance, field: "name")}</g:link></td>					
						<td>${fieldValue(bean: parishInstance, field: "address")}</td>
						<td>${fieldValue(bean: parishInstance, field: "parishPriest")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${parishInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
