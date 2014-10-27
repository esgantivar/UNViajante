package DataBaseModel

class PopulationCenter {
	int idPopulationCenter
	String namePCenter
	static hasMany = [terminals: TransportTerminal]
}
