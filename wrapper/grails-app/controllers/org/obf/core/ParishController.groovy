package org.obf.core



import static org.springframework.http.HttpStatus.*

import org.obf.security.Role;
import org.obf.security.User;
import org.obf.security.UserRole;

import grails.plugin.springsecurity.annotation.Secured;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ParishController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def cloudinaryService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Parish.list(params), model:[parishInstanceCount: Parish.count()]
    }

    def show(Parish parishInstance) {
        respond parishInstance
    }

	@Secured(value=["hasRole('ROLE_ADMIN')"])
    def create() {
        respond new Parish(params)
    }

    @Transactional
    def save(Parish parishInstance) {
		def result = cloudinaryService.upload(parishInstance.image)
		parishInstance.imageParams = [url:result.url, width:String.valueOf(result.width), height:String.valueOf(result.height)]
		parishInstance.image = null
		
        if (parishInstance == null) {
            notFound()
            return
        }

        if (parishInstance.hasErrors()) {
            respond parishInstance.errors, view:'create'
            return
        }

        parishInstance.save flush:true

		def user = new User(username: params.username, password: params.password, enabled: true)
		user.save(flush: true)
		def role = Role.findByAuthority('ROLE_USER')
		
		UserRole.create(user, role, true)
		new UserParish(user: user, parish: parishInstance).save(flush: true)
		
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'parish.label', default: 'Parish'), parishInstance.id])
                redirect parishInstance
            }
            '*' { respond parishInstance, [status: CREATED] }
        }
    }

	@Secured(value=["hasRole('ROLE_ADMIN')"])
    def edit(Parish parishInstance) {
        respond parishInstance
    }

    @Transactional
    def update(Parish parishInstance) {
        if (parishInstance == null) {
            notFound()
            return
        }

        if (parishInstance.hasErrors()) {
            respond parishInstance.errors, view:'edit'
            return
        }

        parishInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Parish.label', default: 'Parish'), parishInstance.id])
                redirect parishInstance
            }
            '*'{ respond parishInstance, [status: OK] }
        }
    }

	@Secured(value=["hasRole('ROLE_ADMIN')"])
    @Transactional
    def delete(Parish parishInstance) {

        if (parishInstance == null) {
            notFound()
            return
        }

        parishInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Parish.label', default: 'Parish'), parishInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'parish.label', default: 'Parish'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
