package org.obf.security

import grails.plugin.springsecurity.annotation.Secured;

class SecureController {

	@Secured(['ROLE_ADMIN'])
    def index() { 
		render "This is secure."
	}
}
