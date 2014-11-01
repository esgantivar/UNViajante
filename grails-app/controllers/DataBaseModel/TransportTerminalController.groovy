package DataBaseModel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TransportTerminalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TransportTerminal.list(params), model:[transportTerminalInstanceCount: TransportTerminal.count()]
    }

    def show(TransportTerminal transportTerminalInstance) {
        respond transportTerminalInstance
    }

    def create() {
        respond new TransportTerminal(params)
    }

    @Transactional
    def save(TransportTerminal transportTerminalInstance) {
        if (transportTerminalInstance == null) {
            notFound()
            return
        }

        if (transportTerminalInstance.hasErrors()) {
            respond transportTerminalInstance.errors, view:'create'
            return
        }

        transportTerminalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'transportTerminal.label', default: 'TransportTerminal'), transportTerminalInstance.id])
                redirect transportTerminalInstance
            }
            '*' { respond transportTerminalInstance, [status: CREATED] }
        }
    }

    def edit(TransportTerminal transportTerminalInstance) {
        respond transportTerminalInstance
    }

    @Transactional
    def update(TransportTerminal transportTerminalInstance) {
        if (transportTerminalInstance == null) {
            notFound()
            return
        }

        if (transportTerminalInstance.hasErrors()) {
            respond transportTerminalInstance.errors, view:'edit'
            return
        }

        transportTerminalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TransportTerminal.label', default: 'TransportTerminal'), transportTerminalInstance.id])
                redirect transportTerminalInstance
            }
            '*'{ respond transportTerminalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TransportTerminal transportTerminalInstance) {

        if (transportTerminalInstance == null) {
            notFound()
            return
        }

        transportTerminalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TransportTerminal.label', default: 'TransportTerminal'), transportTerminalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'transportTerminal.label', default: 'TransportTerminal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
