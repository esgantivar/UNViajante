package DataBaseModel

class TransportTerminal extends GeographicPoint {
	int idTerminal
	String nameTerminal
	static hasMany = [routes:Route]
	static belongsTo = [pCenter : PopulationCenter]
	static mapping ={
		routes cascade: 'delete'
	}
}
