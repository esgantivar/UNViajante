package DataBaseModel

class Company {
	int idCompany
	String nameCompany
	String telephoneNumber
	String address
	static hasMany = [routesAvailable: Route]
	static belongsTo = [city:PopulationCenter]
	
	static constraints ={
		idCompany(nullable: true)
		
	}
}
