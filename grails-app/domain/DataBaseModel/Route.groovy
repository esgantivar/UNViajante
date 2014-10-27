package DataBaseModel

class Route {
	int idRoute
	int positionsAvaiable
	String nameRoute
	static hasMany = [travel:GeographicPoint,
		intermediateStops:TransportTerminal,
		officialStops:BusStop]
	static hasOne = [company:Company ,
		tSource: TransportTerminal,
		tTarget: TransportTerminal]
	
}
