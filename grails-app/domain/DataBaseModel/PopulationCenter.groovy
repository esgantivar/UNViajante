package DataBaseModel

class PopulationCenter extends GeographicPoint{
	String idPopulationCenter
	String namePCenter
	static hasMany = [terminals: TransportTerminal, busStops: BusStop, companies: Company]
	static belongsTo = [department:Department]
	
}
