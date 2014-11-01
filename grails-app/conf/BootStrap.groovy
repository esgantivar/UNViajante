import DataBaseModel.Company
import DataBaseModel.Department
import DataBaseModel.PopulationCenter

class BootStrap {
	
	def init = { servletContext ->
		
		
//		if(Department.list().size()==0){
			//Departamentos
			def Amazonas = new Department(idDepartment: "91", name: "Amazonas")
			def Antioquia = new Department(idDepartment: "5", name: "Antioquia")
			def Arauca = new Department(idDepartment: "81", name: "Arauca")
			def Atlantico = new Department(idDepartment: "8", name: "Atlantico")
			def Bogota = new Department(idDepartment: "11", name: "Bogota")
			def Bolivar = new Department(idDepartment: "13", name: "Bolivar")
			def Boyaca = new Department(idDepartment: "15", name: "Boyaca")
			def Caldas = new Department(idDepartment: "17", name: "Caldas")
			def Caqueta = new Department(idDepartment: "18", name: "Caqueta")
			def Casanare = new Department(idDepartment: "85", name: "Casanare")
			def Cauca = new Department(idDepartment: "19", name: "Cauca")
			def Cesar = new Department(idDepartment: "20", name: "Cesar")
			def Choco = new Department(idDepartment: "27", name: "Choco")
			def Cordoba = new Department(idDepartment: "23", name: "Cordoba")
			def Cundinamarca = new Department(idDepartment: "25", name: "Cundinamarca")
			def Guainia = new Department(idDepartment: "94", name: "Guainia")
			def Guaviare = new Department(idDepartment: "95", name: "Guaviare")
			def Huila = new Department(idDepartment: "41", name: "Huila")
			def La_Guajira = new Department(idDepartment: "44", name: "La_Guajira")
			def Magdalena = new Department(idDepartment: "47", name: "Magdalena")
			def Meta = new Department(idDepartment: "50", name: "Meta")
			def Narino = new Department(idDepartment: "52", name: "Narino")
			def Norte_de_Santander = new Department(idDepartment: "54", name: "Norte_de_Santander")
			def Putumayo = new Department(idDepartment: "86", name: "Putumayo")
			def Quindio = new Department(idDepartment: "63", name: "Quindio")
			def Risaralda = new Department(idDepartment: "66", name: "Risaralda")
			def San_Andres = new Department(idDepartment: "88", name: "San_Andres")
			def Santander = new Department(idDepartment: "68", name: "Santander")
			def Sucre = new Department(idDepartment: "70", name: "Sucre")
			def Tolima = new Department(idDepartment: "73", name: "Tolima")
			def Valle_del_Cauca = new Department(idDepartment: "76", name: "Valle del Cauca")
			def Vaupes = new Department(idDepartment: "97", name: "Vaupes")
			def Vichada = new Department(idDepartment: "99", name: "Vichada")
//		}
		
		//Ciudades
		def LETICIA = new PopulationCenter (idPopulationCenter: "91001", namePCenter: "LETICIA")
		def MEDELLIIN = new PopulationCenter (idPopulationCenter: "05001", namePCenter: "MEDELLÍN")
		def ABEJORRAL = new PopulationCenter (idPopulationCenter: "05002", namePCenter: "ABEJORRAL")
		def BELLO = new PopulationCenter (idPopulationCenter: "05088", namePCenter: "BELLO")
		def ARAUCA = new PopulationCenter (idPopulationCenter: "81001", namePCenter: "ARAUCA")
		def BARRANQUILLA = new PopulationCenter (idPopulationCenter: "08001", namePCenter: "BARRANQUILLA")
		def BOGOTA = new PopulationCenter (idPopulationCenter: "11001", namePCenter: "BOGOTÁ, D.C.")
		def CARTAGENA = new PopulationCenter (idPopulationCenter: "13001", namePCenter: "CARTAGENA")
		def TUNJA = new PopulationCenter (idPopulationCenter: "15001", namePCenter: "TUNJA")
		def MANIZALES = new PopulationCenter (idPopulationCenter: "17001", namePCenter: "MANIZALES")
		def FLORENCIA = new PopulationCenter (idPopulationCenter: "18001", namePCenter: "FLORENCIA")
		def YOPAL = new PopulationCenter (idPopulationCenter: "85001", namePCenter: "YOPAL")
		def POPAYAN = new PopulationCenter (idPopulationCenter: "19001", namePCenter: "POPAYÁN")
		def VALLEDUPAR = new PopulationCenter (idPopulationCenter: "20001", namePCenter: "VALLEDUPAR")
		def QUIBDO = new PopulationCenter (idPopulationCenter: "27001", namePCenter: "QUIBDÓ")
		def MONTERIA = new PopulationCenter (idPopulationCenter: "23001", namePCenter: "MONTERÍA")
		def AGUADEDIOS = new PopulationCenter (idPopulationCenter: "25001", namePCenter: "AGUA DE DIOS")
		def INIRIDA = new PopulationCenter (idPopulationCenter: "94001", namePCenter: "INÍRIDA")
		def SAN_JOSE_DEL_GUAVIARE = new PopulationCenter (idPopulationCenter: "95001", namePCenter: "SAN JOSÉ DEL GUAVIARE")
		def NEIVA = new PopulationCenter (idPopulationCenter: "41001", namePCenter: "NEIVA")
		def RIOHACHA = new PopulationCenter (idPopulationCenter: "44001", namePCenter: "RIOHACHA")
		def SANTA_MARTA = new PopulationCenter (idPopulationCenter: "47001", namePCenter: "SANTA MARTA")
		def VILLAVICENCIO = new PopulationCenter (idPopulationCenter: "50001", namePCenter: "VILLAVICENCIO")
		def PASTO = new PopulationCenter (idPopulationCenter: "52001", namePCenter: "PASTO")
		def CUCUTA = new PopulationCenter (idPopulationCenter: "54001", namePCenter: "CÚCUTA")
		def MOCOA = new PopulationCenter (idPopulationCenter: "86001", namePCenter: "MOCOA")
		def ARMENIA = new PopulationCenter (idPopulationCenter: "63001", namePCenter: "ARMENIA")
		def PEREIRA = new PopulationCenter (idPopulationCenter: "66001", namePCenter: "PEREIRA")
		def SAN_ANDRES = new PopulationCenter (idPopulationCenter: "88001", namePCenter: "SAN ANDRÉS")
		def BUCARAMANGA = new PopulationCenter (idPopulationCenter: "68001", namePCenter: "BUCARAMANGA")
		def SINCELEJO = new PopulationCenter (idPopulationCenter: "70001", namePCenter: "SINCELEJO")
		def IBAGUE = new PopulationCenter (idPopulationCenter: "73001", namePCenter: "IBAGUÉ")
		def CALI = new PopulationCenter (idPopulationCenter: "76001", namePCenter: "CALI")
		def MITU = new PopulationCenter (idPopulationCenter: "97001", namePCenter: "MITÚ")
		def PUERTO_CARRENO = new PopulationCenter (idPopulationCenter: "99001", namePCenter: "PUERTO CARREÑO")
		
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
		
		
		print Department.list()
		
		/*for (dep in Department.list()){
			for(ciudad in PopulationCenter.list()){
				print "entre"
				if(dep.idDepartment == ciudad.idPopulationCenter.substring(0,2)){
					dep.addToCenters(ciudad).save()
				}
			}
		}*/
		
		
	}
	def destroy = {
	}
	
	
}
