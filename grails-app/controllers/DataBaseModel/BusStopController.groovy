package DataBaseModel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BusStopController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BusStop.list(params), model:[busStopInstanceCount: BusStop.count()]
    }

    def show(BusStop busStopInstance) {
        respond busStopInstance
    }

    def create() {
        respond new BusStop(params)
    }

    @Transactional
    def save(BusStop busStopInstance) {
        if (busStopInstance == null) {
            notFound()
            return
        }

        if (busStopInstance.hasErrors()) {
            respond busStopInstance.errors, view:'create'
            return
        }

        busStopInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'busStop.label', default: 'BusStop'), busStopInstance.id])
                redirect busStopInstance
            }
            '*' { respond busStopInstance, [status: CREATED] }
        }
    }

    def edit(BusStop busStopInstance) {
        respond busStopInstance
    }

    @Transactional
    def update(BusStop busStopInstance) {
        if (busStopInstance == null) {
            notFound()
            return
        }

        if (busStopInstance.hasErrors()) {
            respond busStopInstance.errors, view:'edit'
            return
        }

        busStopInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BusStop.label', default: 'BusStop'), busStopInstance.id])
                redirect busStopInstance
            }
            '*'{ respond busStopInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BusStop busStopInstance) {

        if (busStopInstance == null) {
            notFound()
            return
        }

        busStopInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BusStop.label', default: 'BusStop'), busStopInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'busStop.label', default: 'BusStop'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
