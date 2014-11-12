package DataBaseModel

class Route {
	int idRoute
	int positionsAvaiable
	String originCity
	String destinyCity
	float duracionViaje
	int valorAproxViaje
	TransportTerminal targetTerminal
	TransportTerminal sourceTerminal
	final Map departureTimes = ["modified": false, "lun":[], "mar":[], "mie":[], "jue":[], "vie":[], "sab":[], "dom":[]]
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
