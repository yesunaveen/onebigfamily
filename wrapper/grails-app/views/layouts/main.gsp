<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<div id="grailsLogo" role="banner" align="center">
		<h2>One Big Family</h2>
		<h2>${org.obf.core.UserParish.findByUser(org.obf.security.User.findByUsername(sec.username()))?.parish?.name}</h2>
			<div>
				<sec:ifLoggedIn>
				<g:set var="username" value="${sec.username()}" />
				<g:set var="user" value="${org.obf.security.User.findByUsername(username)}" />
				<g:set var="userparish" value="${org.obf.core.UserParish.findByUser(user)}"/>
				<g:if test="${userparish && userparish.parish.imageParams}">
					<g:set var="imageParams" value="${userparish.parish.imageParams}"/>
					<a href="/one-big-family"><g:img uri="${imageParams.url}" width="${Integer.parseInt(imageParams.width)/(Integer.parseInt(imageParams.height)/150) + 1}" height="150"/></a>
				</g:if>
				<g:else>
					<a href="/one-big-family"><g:img uri="http://res.cloudinary.com/onebigfamily/image/upload/v1515238271/one-big-family_vtm4xm.jpg" width="150" height="150"/></a>
				</g:else>
				
				<div>
				<g:remoteLink class="logout" controller="logout" method="post" asynchronous="false" onSuccess="location.reload()">Logout ${sec.username()}</g:remoteLink>
				</div>
				</sec:ifLoggedIn>
				<sec:ifNotLoggedIn>
					<a href="/one-big-family"><g:img uri="http://res.cloudinary.com/onebigfamily/image/upload/v1515238271/one-big-family_vtm4xm.jpg" width="150" height="150"/></a>
				</sec:ifNotLoggedIn>
			</div>
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
