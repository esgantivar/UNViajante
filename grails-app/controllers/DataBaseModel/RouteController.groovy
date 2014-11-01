package DataBaseModel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RouteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Route.list(params), model:[routeInstanceCount: Route.count()]
    }

    def show(Route routeInstance) {
        respond routeInstance
    }

    def create() {
        respond new Route(params)
    }

    @Transactional
    def save(Route routeInstance) {
        if (routeInstance == null) {
            notFound()
            return
        }

        if (routeInstance.hasErrors()) {
            respond routeInstance.errors, view:'create'
            return
        }

        routeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'route.label', default: 'Route'), routeInstance.id])
                redirect routeInstance
            }
            '*' { respond routeInstance, [status: CREATED] }
        }
    }

    def edit(Route routeInstance) {
        respond routeInstance
    }

    @Transactional
    def update(Route routeInstance) {
        if (routeInstance == null) {
            notFound()
            return
        }

        if (routeInstance.hasErrors()) {
            respond routeInstance.errors, view:'edit'
            return
        }

        routeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Route.label', default: 'Route'), routeInstance.id])
                redirect routeInstance
            }
            '*'{ respond routeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Route routeInstance) {

        if (routeInstance == null) {
            notFound()
            return
        }

        routeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Route.label', default: 'Route'), routeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'route.label', default: 'Route'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
