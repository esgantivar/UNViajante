package DataBaseModel

class Company {
	String idCompany
	String nameCompany
	String telephoneNumber
	String address
	static hasMany = [routesAvailable: Route, cities: PopulationCenter]
	static belongsTo = PopulationCenter
	
	static constraints ={
		idCompany(nullable: true)
		
	}
}
