package DataBaseModel

class Department {
	
	String idDepartment
	String name;
	static hasMany = [centers: PopulationCenter]
    static constraints = {
    }
}
