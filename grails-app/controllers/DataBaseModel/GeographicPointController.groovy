package DataBaseModel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GeographicPointController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GeographicPoint.list(params), model:[geographicPointInstanceCount: GeographicPoint.count()]
    }

    def show(GeographicPoint geographicPointInstance) {
        respond geographicPointInstance
    }

    def create() {
        respond new GeographicPoint(params)
    }

    @Transactional
    def save(GeographicPoint geographicPointInstance) {
        if (geographicPointInstance == null) {
            notFound()
            return
        }

        if (geographicPointInstance.hasErrors()) {
            respond geographicPointInstance.errors, view:'create'
            return
        }

        geographicPointInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'geographicPoint.label', default: 'GeographicPoint'), geographicPointInstance.id])
                redirect geographicPointInstance
            }
            '*' { respond geographicPointInstance, [status: CREATED] }
        }
    }

    def edit(GeographicPoint geographicPointInstance) {
        respond geographicPointInstance
    }

    @Transactional
    def update(GeographicPoint geographicPointInstance) {
        if (geographicPointInstance == null) {
            notFound()
            return
        }

        if (geographicPointInstance.hasErrors()) {
            respond geographicPointInstance.errors, view:'edit'
            return
        }

        geographicPointInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GeographicPoint.label', default: 'GeographicPoint'), geographicPointInstance.id])
                redirect geographicPointInstance
            }
            '*'{ respond geographicPointInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GeographicPoint geographicPointInstance) {

        if (geographicPointInstance == null) {
            notFound()
            return
        }

        geographicPointInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GeographicPoint.label', default: 'GeographicPoint'), geographicPointInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'geographicPoint.label', default: 'GeographicPoint'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
