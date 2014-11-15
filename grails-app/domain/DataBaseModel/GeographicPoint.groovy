package DataBaseModel

class GeographicPoint {
	int idGeoPoint
	double latitude
	double longitude
	
	static constraints = {
		latitude(nullable: true)
		longitude(nullable: true)
		idGeoPoint(nullable: true)
	}
}
