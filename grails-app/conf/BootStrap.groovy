import DataBaseModel.Department

class BootStrap {

    def init = { servletContext ->
		
			new Department(idDepartment:"91", name:"Amazonas").save()
			new Department(idDepartment:"05", name:"Antioquia").save()
			new Department(idDepartment:"81", name:"Arauca").save()
			new Department(idDepartment:"08", name:"Atlantico").save()
			new Department(idDepartment:"11", name:"Bogota DC").save()
			new Department(idDepartment:"13", name:"Bolivar").save()
			new Department(idDepartment:"15", name:"Boyaca").save()
			new Department(idDepartment:"17", name:"Caldas").save()
			new Department(idDepartment:"18", name:"Caqueta").save()
			new Department(idDepartment:"85", name:"Casanare").save()
			new Department(idDepartment:"19", name:"Cauca").save()
			new Department(idDepartment:"20", name:"Cesar").save()
			new Department(idDepartment:"27", name:"Choco").save()
			new Department(idDepartment:"23", name:"Cordoba").save()
			new Department(idDepartment:"25", name:"Cundinamarca").save()
			new Department(idDepartment:"94", name:"Guainía").save()
			new Department(idDepartment:"95", name:"Guaviare").save()
			new Department(idDepartment:"41", name:"Huila").save()
			new Department(idDepartment:"44", name:"La Guajira").save()
			new Department(idDepartment:"47", name:"Magdalena").save()
			new Department(idDepartment:"50", name:"Meta").save()
			new Department(idDepartment:"52", name:"Nariño").save()
			new Department(idDepartment:"54", name:"Norte de Santander").save()
			new Department(idDepartment:"86", name:"Putumayo").save()
			new Department(idDepartment:"63", name:"Quindío").save()
			new Department(idDepartment:"66", name:"Risaralda").save()
			new Department(idDepartment:"88", name:"San Andrés").save()
			new Department(idDepartment:"68", name:"Santander").save()
			new Department(idDepartment:"70", name:"Sucre ").save()
			new Department(idDepartment:"73", name:"Tolima ").save()
			new Department(idDepartment:"76", name:"Valle del Cauca ").save()
			new Department(idDepartment:"97", name:"Vaupés ").save()
			new Department(idDepartment:"99", name:"Vichada ").save()
	
		
    }
    def destroy = {
    }
}
