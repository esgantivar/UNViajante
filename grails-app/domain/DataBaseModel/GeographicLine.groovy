package DataBaseModel

class GeographicLine {
	int idGeoLine;
	static hasOne = [route: Route]
	static hasMany =[points: GeographicPoint]
	static belongsTo = GeographicPoint
}
