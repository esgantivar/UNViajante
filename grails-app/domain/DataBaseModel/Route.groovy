package DataBaseModel

class Route extends GeographicPoint{
	int idRoute
	int positionsAvaiable
	String originCity
	String destinyCity
	float duracionViaje
	int valorAproxViaje
	TransportTerminal targetTerminal
	TransportTerminal sourceTerminal
	def departureTimes = [:]
	
	static belongsTo = [company:Company/*, travel: GeographicLine*/]
	static hasMany = [officialStops:BusStop,intermediateTerminal:TransportTerminal]
	
	static constraints ={
		targetTerminal(nullable: true)
		sourceTerminal(nullable: true)
		idRoute(nullable:true)
		positionsAvaiable(nullable: true) 
		departureTimes(nullable:true)
		
	}
	
	
}
