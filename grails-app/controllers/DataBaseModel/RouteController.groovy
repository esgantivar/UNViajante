package DataBaseModel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RouteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        //params.max = Math.min(max ?: 10, 100)
        //respond Route.list(params), model:[routeInstanceCount: Route.count()]
		render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc')]
    }

    def show(Route routeInstance) {
        respond routeInstance
    }

    def create() {
        respond new Route(params)
    }

	/*def listaPorEmpresa(){
		//Consulta
		def company = Company.findByNameCompany(params.empresa)
		def routeList = company.routesAvailable
		render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), routes: routeList]
	}
	
	def listaPorCiudad(){
		//Consulta
		def pobName = params.id
		def routeList = Route.findAllByOriginCity(pobName)  
		routeList += Route.findAllByDestinyCity(pobName)
		render view:'resultados', model:[routes: routeList]
	}*/
	
	def consulta(){
		//consulta
		def origen = params.origen
		def destino = params.destino
		def empresa = params.empresa
		if(empresa != "-1" && origen != "-1" && destino != "-1"){
			def routeList = Route.where{
				originCity == origen && destinyCity == destino && company.nameCompany == empresa
			}
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), routes: routeList.list()]
		}else
		if(empresa == "-1" && origen != "-1" && destino != "-1"){
			def routeList = Route.findAllByOriginCityAndDestinyCity(origen, destino)
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), routes: routeList]
		}else
		if(empresa != "-1" && origen == "-1" && destino == "-1"){
			def routeList = Route.where{
				company.nameCompany == empresa
			}
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), routes: routeList.list()]
		}else
		if(empresa != "-1" && origen != "-1" && destino == "-1"){
			def routeList = Route.where{
				company.nameCompany == empresa && originCity == origen
			}
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), routes: routeList.list()]
		}else
		if(empresa != "-1" && origen == "-1" && destino != "-1"){
			def routeList = Route.where{
				company.nameCompany == empresa && destinyCity == destino
			}
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), routes: routeList.list()]
		}else
		if(empresa == "-1" && origen == "-1" && destino != "-1"){
			def routeList = Route.findAllByDestinyCity(destino)
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), routes: routeList]
		}else
		if(empresa == "-1" && origen != "-1" && destino == "-1"){
			def routeList = Route.findAllByOriginCity(origen)
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), routes: routeList]
		}else
		if(empresa == "-1" && origen == "-1" && destino == "-1"){
			def routeList = Route.list()
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), routes: routeList]
		}  
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
