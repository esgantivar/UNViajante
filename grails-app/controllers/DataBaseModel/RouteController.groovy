package DataBaseModel



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RouteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def pricesList = ["20000-30000","30000-50000","50000-70000","70000-90000","mas de 90000"]
	def thereIsConsult = false
    
	def index(Integer max) {
        //params.max = Math.min(max ?: 10, 100)
        //respond Route.list(params), model:[routeInstanceCount: Route.count()]
		def thereIsConsult = false
		def tabActive = "normal"
		render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), 
			populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), prices:pricesList, consult:thereIsConsult, routes: [], tabActiva: tabActive]
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
		def precio = params.precio
		def tabActive = params.hidTabActiva
		thereIsConsult = true
		
		def c = "from Route as r where "
		def map = [:]
		def l = c.size()
		
		if(origen != "-1"){
			c += "r.originCity =:origin"
			map["origin"] = origen
		} 
		if(destino != "-1" && c.size() == l){
			c += "r.destinyCity =:destiny"
			map["destiny"] = destino
		}else
		if(destino != "-1" && c.size() != l){
			c += " and r.destinyCity =:destiny"
			map["destiny"] = destino
		} 
		if(empresa != "-1" && c.size() == l){
			c += "r.company.nameCompany =:company"
			map["company"] = empresa
		}else
		if(empresa != "-1" && c.size() != l){
			c += " and r.company.nameCompany =:company"
			map["company"] = empresa
		} 
		if(precio != "-1" && c.size() == l){
			precio = precio.split('-')
			if(precio.size() == 1)
				 c += "r.valorAproxViaje > 90000" //Caso en que se elija la opcion de mas de 90000
			else c += "r.valorAproxViaje between ${precio[0]} and ${precio[1]}"
		}else
		if(precio != "-1" && c.size() != l){
			precio = precio.split('-')
			if(precio.size() == 1)
				c += " and r.valorAproxViaje > 90000" //Caso en que se elija la opcion de mas de 90000
			else c += " and r.valorAproxViaje between ${precio[0]} and ${precio[1]}"
		}
		
		if(c.size() == l){ //En caso de que no se seleccione nigun filtro se retornan todas las rutas en la base
			def routeList = Route.list()
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), prices:pricesList, routes: routeList, consult: thereIsConsult, tabActiva: tabActive]
		}else{
			def routeList = Route.findAll(c, map)
			render view:'rutas', model:[companies: Company.list(sort:'nameCompany', order:'asc'), populations: PopulationCenter.list(sort:'namePCenter', order:'asc'), prices:pricesList, routes: routeList, consult: thereIsConsult, tabActiva: tabActive]
		}
		
	}
	
	def detalleRuta(){
		def idRuta =  params.id
		def ruta = Route.findById(idRuta)
		print ruta.departureTimes
		render view: 'detalleRuta', model:[route: ruta]
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
