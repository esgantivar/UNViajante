package DataBaseModel

class Route {
	int idRoute
	int positionsAvaiable
	String nameRoute
	TransportTerminal target
	TransportTerminal source
	static belongsTo = [company:Company,intermediateTerminal:TransportTerminal]
	static hasOne = [travel:GeographicLine]
	static hasMany = [officialStops:BusStop,intermediateTerminal:TransportTerminal]
	
}
