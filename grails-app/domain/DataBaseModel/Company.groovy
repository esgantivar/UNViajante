package DataBaseModel

class Company {
	int idCompany
	String nameCompany
	String telephoneNumber
	String address
	static hasMany = [routesAvailable: Route]
}
