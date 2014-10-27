package DataBaseModel

class BusStop extends GeographicPoint{	int idBusStop
	String nameBusStop
	static belongsTo = [populationCenter:PopulationCenter]
}
