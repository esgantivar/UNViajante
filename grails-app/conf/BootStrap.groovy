import DataBaseModel.Company
import DataBaseModel.Department
import DataBaseModel.PopulationCenter

class BootStrap {
	
	def init = { servletContext ->
		
		
//		if(Department.list().size()==0){
			//Departamentos
			def Amazonas = new Department(idDepartment: "91", name: "Amazonas").save()
			def Antioquia = new Department(idDepartment: "05", name: "Antioquia").save()
			def Arauca = new Department(idDepartment: "81", name: "Arauca").save()
			def Atlantico = new Department(idDepartment: "08", name: "Atlantico").save()
			def Bogota = new Department(idDepartment: "11", name: "Bogota").save()
			def Bolivar = new Department(idDepartment: "13", name: "Bolivar").save()
			def Boyaca = new Department(idDepartment: "15", name: "Boyaca").save()
			def Caldas = new Department(idDepartment: "17", name: "Caldas").save()
			def Caqueta = new Department(idDepartment: "18", name: "Caqueta").save()
			def Casanare = new Department(idDepartment: "85", name: "Casanare").save()
			def Cauca = new Department(idDepartment: "19", name: "Cauca").save()
			def Cesar = new Department(idDepartment: "20", name: "Cesar").save()
			def Choco = new Department(idDepartment: "27", name: "Choco").save()
			def Cordoba = new Department(idDepartment: "23", name: "Cordoba").save()
			def Cundinamarca = new Department(idDepartment: "25", name: "Cundinamarca").save()
			def Guainia = new Department(idDepartment: "94", name: "Guainia").save()
			def Guaviare = new Department(idDepartment: "95", name: "Guaviare").save()
			def Huila = new Department(idDepartment: "41", name: "Huila").save()
			def La_Guajira = new Department(idDepartment: "44", name: "La_Guajira").save()
			def Magdalena = new Department(idDepartment: "47", name: "Magdalena").save()
			def Meta = new Department(idDepartment: "50", name: "Meta").save()
			def Narino = new Department(idDepartment: "52", name: "Narino").save()
			def Norte_de_Santander = new Department(idDepartment: "54", name: "Norte_de_Santander").save()
			def Putumayo = new Department(idDepartment: "86", name: "Putumayo").save()
			def Quindio = new Department(idDepartment: "63", name: "Quindio").save()
			def Risaralda = new Department(idDepartment: "66", name: "Risaralda").save()
			def San_Andres = new Department(idDepartment: "88", name: "San_Andres").save()
			def Santander = new Department(idDepartment: "68", name: "Santander").save()
			def Sucre = new Department(idDepartment: "70", name: "Sucre").save()
			def Tolima = new Department(idDepartment: "73", name: "Tolima").save()
			def Valle_del_Cauca = new Department(idDepartment: "76", name: "Valle del Cauca").save()
			def Vaupes = new Department(idDepartment: "97", name: "Vaupes").save()
			def Vichada = new Department(idDepartment: "99", name: "Vichada").save()
//		}
		
		//Ciudades
		def LETICIA = new PopulationCenter (idPopulationCenter: "91001", namePCenter: "LETICIA").save()
		def MEDELLIIN = new PopulationCenter (idPopulationCenter: "05001", namePCenter: "MEDELLÍN").save()
		def ABEJORRAL = new PopulationCenter (idPopulationCenter: "05002", namePCenter: "ABEJORRAL").save()
		def BELLO = new PopulationCenter (idPopulationCenter: "05088", namePCenter: "BELLO").save()
		def ARAUCA = new PopulationCenter (idPopulationCenter: "81001", namePCenter: "ARAUCA").save()
		def BARRANQUILLA = new PopulationCenter (idPopulationCenter: "08001", namePCenter: "BARRANQUILLA").save()
		def BOGOTA = new PopulationCenter (idPopulationCenter: "11001", namePCenter: "BOGOTÁ, D.C.").save()
		def CARTAGENA = new PopulationCenter (idPopulationCenter: "13001", namePCenter: "CARTAGENA").save()
		def TUNJA = new PopulationCenter (idPopulationCenter: "15001", namePCenter: "TUNJA").save()
		def MANIZALES = new PopulationCenter (idPopulationCenter: "17001", namePCenter: "MANIZALES").save()
		def FLORENCIA = new PopulationCenter (idPopulationCenter: "18001", namePCenter: "FLORENCIA").save()
		def YOPAL = new PopulationCenter (idPopulationCenter: "85001", namePCenter: "YOPAL").save()
		def POPAYAN = new PopulationCenter (idPopulationCenter: "19001", namePCenter: "POPAYÁN").save()
		def VALLEDUPAR = new PopulationCenter (idPopulationCenter: "20001", namePCenter: "VALLEDUPAR").save()
		def QUIBDO = new PopulationCenter (idPopulationCenter: "27001", namePCenter: "QUIBDÓ").save()
		def MONTERIA = new PopulationCenter (idPopulationCenter: "23001", namePCenter: "MONTERÍA").save()
		def AGUADEDIOS = new PopulationCenter (idPopulationCenter: "25001", namePCenter: "AGUA DE DIOS").save()
		def INIRIDA = new PopulationCenter (idPopulationCenter: "94001", namePCenter: "INÍRIDA").save()
		def SAN_JOSE_DEL_GUAVIARE = new PopulationCenter (idPopulationCenter: "95001", namePCenter: "SAN JOSÉ DEL GUAVIARE").save()
		def NEIVA = new PopulationCenter (idPopulationCenter: "41001", namePCenter: "NEIVA").save()
		def RIOHACHA = new PopulationCenter (idPopulationCenter: "44001", namePCenter: "RIOHACHA").save()
		def SANTA_MARTA = new PopulationCenter (idPopulationCenter: "47001", namePCenter: "SANTA MARTA").save()
		def VILLAVICENCIO = new PopulationCenter (idPopulationCenter: "50001", namePCenter: "VILLAVICENCIO").save()
		def PASTO = new PopulationCenter (idPopulationCenter: "52001", namePCenter: "PASTO").save()
		def CUCUTA = new PopulationCenter (idPopulationCenter: "54001", namePCenter: "CÚCUTA").save()
		def MOCOA = new PopulationCenter (idPopulationCenter: "86001", namePCenter: "MOCOA").save()
		def ARMENIA = new PopulationCenter (idPopulationCenter: "63001", namePCenter: "ARMENIA").save()
		def PEREIRA = new PopulationCenter (idPopulationCenter: "66001", namePCenter: "PEREIRA").save()
		def SAN_ANDRES = new PopulationCenter (idPopulationCenter: "88001", namePCenter: "SAN ANDRÉS").save()
		def BUCARAMANGA = new PopulationCenter (idPopulationCenter: "68001", namePCenter: "BUCARAMANGA").save()
		def SINCELEJO = new PopulationCenter (idPopulationCenter: "70001", namePCenter: "SINCELEJO").save()
		def IBAGUE = new PopulationCenter (idPopulationCenter: "73001", namePCenter: "IBAGUÉ").save()
		def CALI = new PopulationCenter (idPopulationCenter: "76001", namePCenter: "CALI").save()
		def MITU = new PopulationCenter (idPopulationCenter: "97001", namePCenter: "MITÚ").save()
		def PUERTO_CARRENO = new PopulationCenter (idPopulationCenter: "99001", namePCenter: "PUERTO CARREÑO").save()
		
		//Empresas de transporte
		def Rapido_Tolima = new Company(nameCompany: "Rápido Tolima", telephoneNumer: "8 2654321", address: "Cra 5ta # 38-56")
		def Flota_La_Magdalena = new Company(nameCompany: "Flota La Magdalena", telephoneNumer: "4 2309452", address: "Carrera 64A # 78-580")
		def Rapido_Ochoa = new Company(nameCompany: "Rápido Ochoa", telephoneNumer: "4 4448888", address: "Transversal 78 #65-196")
		def Empresa_Arauca = new Company(nameCompany: "Empresa Arauca S.A", telephoneNumer: "6 3214337", address: "Calle 17 #23-15 Nivel 2, Oficina 12")
		def Expreso_Brasilia = new Company(nameCompany: "Expreso Brasilia", telephoneNumer: "1 2630726", address: "Diagonal 23 No 69 - 60")
		def Coonorte = new Company(nameCompany: "Coonorte", telephoneNumer: "4 3696760 Ext 100", address: "Calle 39 N 48-46")
		def Expreso_Bolivariano = new Company(nameCompany: "Expreso Bolivariano", telephoneNumer: "1 4249090", address: "Diagonal 33B No. 69 A 10")
		def Copetran = new Company(nameCompany: "Copetran", telephoneNumer: "7 6448167", address: "Calle 55 No. 17B-17")
		def Berlinas_del_Fonce = new Company(nameCompany: "Berlinas del Fonce", telephoneNumer: "5 3230033", address: "Km 1.5 prolongación Av. Murillo")
		
		
		agregarPoblacion()
		
		
	}
	
	//Las poblaciones correspondientes a un departamento son agragadas al mismo
	def agregarPoblacion(){
		for (dep in Department.list()){ //Se recorren todos los departamentos
			def idDep =   dep.idDepartment+"%" //Se obtiene el id del departamento
			def cities = PopulationCenter.findAllByIdPopulationCenterLike(idDep) //Se buscan las ciudades que empiecen por ese id
			for (city in cities){
				dep.addToCenters(city).save() //Se añaden las ciudades respectivas
			}
		}
	}
	def destroy = {
	}
	
	
}
