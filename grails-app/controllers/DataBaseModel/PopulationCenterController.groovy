package DataBaseModel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PopulationCenterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PopulationCenter.list(params), model:[populationCenterInstanceCount: PopulationCenter.count()]
    }

    def show(PopulationCenter populationCenterInstance) {
        respond populationCenterInstance
    }

    def create() {
        respond new PopulationCenter(params)
    }

    @Transactional
    def save(PopulationCenter populationCenterInstance) {
        if (populationCenterInstance == null) {
            notFound()
            return
        }

        if (populationCenterInstance.hasErrors()) {
            respond populationCenterInstance.errors, view:'create'
            return
        }

        populationCenterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'populationCenter.label', default: 'PopulationCenter'), populationCenterInstance.id])
                redirect populationCenterInstance
            }
            '*' { respond populationCenterInstance, [status: CREATED] }
        }
    }

    def edit(PopulationCenter populationCenterInstance) {
        respond populationCenterInstance
    }

    @Transactional
    def update(PopulationCenter populationCenterInstance) {
        if (populationCenterInstance == null) {
            notFound()
            return
        }

        if (populationCenterInstance.hasErrors()) {
            respond populationCenterInstance.errors, view:'edit'
            return
        }

        populationCenterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PopulationCenter.label', default: 'PopulationCenter'), populationCenterInstance.id])
                redirect populationCenterInstance
            }
            '*'{ respond populationCenterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PopulationCenter populationCenterInstance) {

        if (populationCenterInstance == null) {
            notFound()
            return
        }

        populationCenterInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PopulationCenter.label', default: 'PopulationCenter'), populationCenterInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'populationCenter.label', default: 'PopulationCenter'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
