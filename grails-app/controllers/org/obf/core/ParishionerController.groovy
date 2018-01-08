package org.obf.core



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ParishionerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Parishioner.list(params), model:[parishionerInstanceCount: Parishioner.count()]
    }

    def show(Parishioner parishionerInstance) {
        respond parishionerInstance
    }

	@Secured(value=["hasRole('ROLE_USER')"])
    def create() {
        respond new Parishioner(params)
    }

    @Transactional
    def save(Parishioner parishionerInstance) {
        if (parishionerInstance == null) {
            notFound()
            return
        }

        if (parishionerInstance.hasErrors()) {
            respond parishionerInstance.errors, view:'create'
            return
        }

        parishionerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'parishioner.label', default: 'Parishioner'), parishionerInstance.id])
                redirect parishionerInstance
            }
            '*' { respond parishionerInstance, [status: CREATED] }
        }
    }

	@Secured(value=["hasRole('ROLE_USER')"])
    def edit(Parishioner parishionerInstance) {
        respond parishionerInstance
    }

    @Transactional
    def update(Parishioner parishionerInstance) {
        if (parishionerInstance == null) {
            notFound()
            return
        }

        if (parishionerInstance.hasErrors()) {
            respond parishionerInstance.errors, view:'edit'
            return
        }

        parishionerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Parishioner.label', default: 'Parishioner'), parishionerInstance.id])
                redirect parishionerInstance
            }
            '*'{ respond parishionerInstance, [status: OK] }
        }
    }

	@Secured(value=["hasRole('ROLE_USER')"])
    @Transactional
    def delete(Parishioner parishionerInstance) {

        if (parishionerInstance == null) {
            notFound()
            return
        }

        parishionerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Parishioner.label', default: 'Parishioner'), parishionerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'parishioner.label', default: 'Parishioner'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
