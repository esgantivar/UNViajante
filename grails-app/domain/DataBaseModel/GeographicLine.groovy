package DataBaseModel

class GeographicLine {
	String idGeoLine;
	Route route
	static hasMany =[points: GeographicPoint]
	static belongsTo = GeographicPoint
}
