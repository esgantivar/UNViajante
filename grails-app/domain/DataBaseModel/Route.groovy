package DataBaseModel

class Route {
	int idRoute
	int positionsAvaiable
	String nameRoute
	float duracionViaje
	int valorAproxViaje
	TransportTerminal target
	TransportTerminal source
	static belongsTo = [company:Company/*, travel: GeographicLine*/]
	static hasMany = [officialStops:BusStop,intermediateTerminal:TransportTerminal]
	
	static constraints ={
		target(nullable: true)
		source(nullable: true)
		idRoute(nullable:true)
		positionsAvaiable(nullable: true) 
	}
}
