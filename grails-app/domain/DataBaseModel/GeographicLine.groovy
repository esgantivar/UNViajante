package DataBaseModel

class GeographicLine {
	int idGeoLine;
	static hasMany =[points: GeographicPoint,routes: Route]
	static belongsTo = GeographicPoint
}
