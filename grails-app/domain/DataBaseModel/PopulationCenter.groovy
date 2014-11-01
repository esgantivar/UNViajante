package DataBaseModel

class PopulationCenter extends GeographicPoint{
	int idPopulationCenter
	String namePCenter
	static hasMany = [terminals: TransportTerminal, busStops: BusStop]
	static belongsTo = [department:Department]
	static mapping ={
		terminals cascade: 'delete'
		busStops cascade: 'delete'
	}
}
