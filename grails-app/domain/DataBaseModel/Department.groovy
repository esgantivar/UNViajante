package DataBaseModel

class Department {
	
	int idDepartment
	String name;
	static hasMany = [centers: PopulationCenter]
    static constraints = {
    }
}
