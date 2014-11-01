package DataBaseModel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GeographicLineController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GeographicLine.list(params), model:[geographicLineInstanceCount: GeographicLine.count()]
    }

    def show(GeographicLine geographicLineInstance) {
        respond geographicLineInstance
    }

    def create() {
        respond new GeographicLine(params)
    }

    @Transactional
    def save(GeographicLine geographicLineInstance) {
        if (geographicLineInstance == null) {
            notFound()
            return
        }

        if (geographicLineInstance.hasErrors()) {
            respond geographicLineInstance.errors, view:'create'
            return
        }

        geographicLineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'geographicLine.label', default: 'GeographicLine'), geographicLineInstance.id])
                redirect geographicLineInstance
            }
            '*' { respond geographicLineInstance, [status: CREATED] }
        }
    }

    def edit(GeographicLine geographicLineInstance) {
        respond geographicLineInstance
    }

    @Transactional
    def update(GeographicLine geographicLineInstance) {
        if (geographicLineInstance == null) {
            notFound()
            return
        }

        if (geographicLineInstance.hasErrors()) {
            respond geographicLineInstance.errors, view:'edit'
            return
        }

        geographicLineInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GeographicLine.label', default: 'GeographicLine'), geographicLineInstance.id])
                redirect geographicLineInstance
            }
            '*'{ respond geographicLineInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GeographicLine geographicLineInstance) {

        if (geographicLineInstance == null) {
            notFound()
            return
        }

        geographicLineInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GeographicLine.label', default: 'GeographicLine'), geographicLineInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'geographicLine.label', default: 'GeographicLine'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
