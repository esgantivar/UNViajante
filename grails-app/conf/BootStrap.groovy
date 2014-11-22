import DataBaseModel.Company
import DataBaseModel.Department
import DataBaseModel.PopulationCenter
import DataBaseModel.Route
import DataBaseModel.GeographicLine

import groovy.sql.Sql

class BootStrap {

	def init = { servletContext ->

		//Departamentos
		new Department(idDepartment: "91", name: "Amazonas").save()
		new Department(idDepartment: "05", name: "Antioquia").save()
		new Department(idDepartment: "81", name: "Arauca").save()
		new Department(idDepartment: "08", name: "Atlantico").save()
		new Department(idDepartment: "11", name: "Bogota").save()
		new Department(idDepartment: "13", name: "Bolivar").save()
		new Department(idDepartment: "15", name: "Boyaca").save()
		new Department(idDepartment: "17", name: "Caldas").save()
		new Department(idDepartment: "18", name: "Caqueta").save()
		new Department(idDepartment: "85", name: "Casanare").save()
		new Department(idDepartment: "19", name: "Cauca").save()
		new Department(idDepartment: "20", name: "Cesar").save()
		new Department(idDepartment: "27", name: "Choco").save()
		new Department(idDepartment: "23", name: "Cordoba").save()
		new Department(idDepartment: "25", name: "Cundinamarca").save()
		new Department(idDepartment: "94", name: "Guainia").save()
		new Department(idDepartment: "95", name: "Guaviare").save()
		new Department(idDepartment: "41", name: "Huila").save()
		new Department(idDepartment: "44", name: "Guajira").save()
		new Department(idDepartment: "47", name: "Magdalena").save()
		new Department(idDepartment: "50", name: "Meta").save()
		new Department(idDepartment: "52", name: "Narino").save()
		new Department(idDepartment: "54", name: "Norte de Santander").save()
		new Department(idDepartment: "86", name: "Putumayo").save()
		new Department(idDepartment: "63", name: "Quindio").save()
		new Department(idDepartment: "66", name: "Risaralda").save()
		new Department(idDepartment: "88", name: "San Andres").save()
		new Department(idDepartment: "68", name: "Santander").save()
		new Department(idDepartment: "70", name: "Sucre").save()
		new Department(idDepartment: "73", name: "Tolima").save()
		new Department(idDepartment: "76", name: "Valle del Cauca").save()
		new Department(idDepartment: "97", name: "Vaupes").save()
		new Department(idDepartment: "99", name: "Vichada").save()


		//Ciudades

		agregarPoblacion(new PopulationCenter (idPopulationCenter: "05001", namePCenter: "Medellin", latitude: 6.24897, longitude: -75.575742 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "05002", namePCenter: "Abejorral", latitude: 5.789246, longitude: -75.428819 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "05088", namePCenter: "Bello", latitude: 6.332887, longitude: -75.552466 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "81001", namePCenter: "Arauca", latitude: 7.079984, longitude: -70.756142 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "08001", namePCenter: "Barranquilla", latitude: 10.977857, longitude: -74.804808 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "11001", namePCenter: "Bogota", latitude: 4.646032, longitude: -74.10582 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "13001", namePCenter: "Cartagena", latitude: 10.399892, longitude: -75.502992 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "15001", namePCenter: "Tunja", latitude: 5.542139, longitude: -73.356045 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "17001", namePCenter: "Manizales", latitude: 5.060199, longitude: -75.49115 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "18001", namePCenter: "Florencia", latitude: 1.616346, longitude: -75.607511 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "85001", namePCenter: "Yopal", latitude: 5.333376, longitude: -72.394998 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "19001", namePCenter: "Popayan", latitude: 2.457516, longitude: -76.597933 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "20001", namePCenter: "Valledupar", latitude: 10.466346, longitude: -73.255179 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "27001", namePCenter: "Quibdo", latitude: 5.688892, longitude: -76.653676 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "23001", namePCenter: "Monteria", latitude: 8.756296, longitude: -75.878996 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "25001", namePCenter: "Agua de Dios", latitude: 4.376668, longitude: -74.668457 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "94001", namePCenter: "Inirida", latitude: 3.867969, longitude: -67.923854 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "95001", namePCenter: "San Jose del Guaviare", latitude: 2.568341, longitude: -72.638945 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "41001", namePCenter: "Neiva", latitude: 2.935465, longitude: -75.277781 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "44001", namePCenter: "Rioacha", latitude: 11.538218, longitude: -72.910328 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "47001", namePCenter: "Santa Marta", latitude: 11.23653, longitude: -74.190383 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "50001", namePCenter: "Villavicencio", latitude: 4.131707, longitude: -73.62098 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "52001", namePCenter: "Pasto", latitude: 1.211149, longitude: -77.278048 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "54001", namePCenter: "Cucuta", latitude: 7.903995, longitude: -72.504683 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "86001", namePCenter: "Mocoa", latitude: 1.150363, longitude: -76.64994 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "63001", namePCenter: "Armenia", latitude: 4.53486, longitude: -75.683266 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "66001", namePCenter: "Pereira", latitude: 4.807241, longitude: -75.716771 ))
//		agregarPoblacion(new PopulationCenter (idPopulationCenter: "88001", namePCenter: "San Andres", latitude: 12.580084, longitude: -81.706913 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "68001", namePCenter: "Bucaramanga", latitude: 7.115287, longitude: -73.132416 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "70001", namePCenter: "Sincelejo", latitude: 9.298266, longitude: -75.396674 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "73001", namePCenter: "Ibague", latitude: 4.427993, longitude: -75.187788 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "76001", namePCenter: "Cali", latitude: 3.418443, longitude: -76.52446 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "97001", namePCenter: "Mitu", latitude: 1.254099, longitude: -70.233609 ))
		agregarPoblacion(new PopulationCenter (idPopulationCenter: "99001", namePCenter: "Puerto Carreno", latitude: 6.183934, longitude: -67.488234 ))


		//Empresas de transporte
		agregarCompañia(new Company(nameCompany: "Rapido Tolima", telephoneNumber: "8 2654321", address: "Cra 5ta # 38-56"), "Ibague")
		agregarCompañia(new Company(nameCompany: "Flota La Magdalena", telephoneNumber: "4 2309452", address: "Carrera 64A # 78-580"), "Medellin")
		agregarCompañia(new Company(nameCompany: "Rapido Ochoa", telephoneNumber: "4 4448888", address: "Transversal 78 #65-196"), "Medellin")
		agregarCompañia(new Company(nameCompany: "Empresa Arauca", telephoneNumber: "6 3214337", address: "Calle 17 #23-15 Nivel 2, Oficina 12"), "Pereira")
		agregarCompañia(new Company(nameCompany: "Expreso Brasilia", telephoneNumber: "1 2630726", address: "Diagonal 23 No 69 - 60"), "Bogota")
		agregarCompañia(new Company(nameCompany: "Coonorte", telephoneNumber: "4 3696760 Ext 100", address: "Calle 39 N 48-46"), "Medellin")
		agregarCompañia(new Company(nameCompany: "Expreso Bolivariano", telephoneNumber: "1 4249090", address: "Diagonal 33B No. 69 A 10"), "Bogota")
		agregarCompañia(new Company(nameCompany: "Copetran", telephoneNumber: "7 6448167", address: "Calle 55 No. 17B-17"), "Bucaramanga")
		agregarCompañia(new Company(nameCompany: "Berlinas del Fonce", telephoneNumber: "5 3230033", address: "Km 1.5 prolongación Av. Murillo"), "Barranquilla")


		//Rutas
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Medellin", duracionViaje: 9, valorAproxViaje: 35000), "Rapido Tolima", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Medellin", duracionViaje: 10, valorAproxViaje: 55000), "Flota La Magdalena", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Medellin", duracionViaje: 11, valorAproxViaje: 55000), "Rapido Ochoa", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Medellin", duracionViaje: 12, valorAproxViaje: 55000), "Empresa Arauca", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Medellin", duracionViaje: 13, valorAproxViaje: 60000), "Expreso Brasilia", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Medellin", duracionViaje: 14, valorAproxViaje: 50000), "Coonorte", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Medellin", duracionViaje: 15, valorAproxViaje: 45000), "Flota La Magdalena", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Medellin", duracionViaje: 16, valorAproxViaje: 55000), "Expreso Bolivariano", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Cartagena", duracionViaje: 18, valorAproxViaje: 138000), "Copetran", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Cartagena", duracionViaje: 20, valorAproxViaje: 138000), "Expreso Brasilia", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Cartagena", duracionViaje: 24, valorAproxViaje: 140000), "Rapido Ochoa", null)
		agregarRuta(new Route(originCity: "Bogota", destinyCity: "Cartagena", duracionViaje: 12, valorAproxViaje: 138000), "Berlinas del Fonce", null)
		agregarRuta(new Route(originCity: "Medellin", destinyCity: "Bogota", duracionViaje: 9, valorAproxViaje: 55000), "Expreso Brasilia", null)
		agregarRuta(new Route(originCity: "Medellin", destinyCity: "Bogota", duracionViaje: 8.5, valorAproxViaje: 60000), "Expreso Bolivariano", null)
		agregarRuta(new Route(originCity: "Medellin", destinyCity: "Cartagena", duracionViaje: 13, valorAproxViaje: 105000), "Expreso Brasilia", null)
		agregarRuta(new Route(originCity: "Cartagena", destinyCity: "Bogota", duracionViaje: 8.5, valorAproxViaje: 110000), "Expreso Brasilia", null)
		agregarRuta(new Route(originCity: "Cartagena", destinyCity: "Medellin", duracionViaje: 13, valorAproxViaje: 105000), "Expreso Brasilia", null)


		def s = "from Route as r where r.destinyCity =:destiny and r.valorAproxViaje between 30000 and 50000"
		def routeList = Route.findAll(s,[destiny:'Medellin'])

		print routeList[0].departureTimes
	}

	//Las poblaciones correspondientes a un departamento son agregadas al mismo
	def agregarPoblacion(poblacion){
		def idPoblacion = poblacion.idPopulationCenter.substring(0,2)
		def dep = Department.findByIdDepartment(idPoblacion)
		dep.addToCenters(poblacion).save(flush:true) //Se añaden las ciudades respectivas
	}

	def agregarCompañia(company, poblacion){
		def pob = PopulationCenter.findByNamePCenter(poblacion)
		pob.addToCompanies(company).save(flush:true)
	}

	def agregarRuta(ruta, company, travel){
		ruta.departureTimes = agregarHorarios()
		ruta.save(flush:true)
		if(company != null){
			def comp = Company.findByNameCompany(company)
			comp.addToRoutesAvailable(ruta).save(flush:true)
		}
		if(travel != null){
			def gLine = GeographicLine.findByIdGeoLine(travel)
			gLine.route = ruta
		}
	}

	def agregarHorarios(){
		def departureTimes =  ["modified": true, "lun":[], "mar":[], "mie":[], "jue":[], "vie":[], "sab":[], "dom":[]]
		def days = [0:"lun", 1:"mar", 2:"mie", 3:"jue", 4:"vie", 5:"sab", 6:"dom"]
		def hours = [0:"5:00",1:"5:30",2:"6:00",3:"6:30",4:"7:00",5:"7:30",6:"8:00",7:"8:30",8:"9:00",9:"9:30",10:"10:00",11:"10:30",12:"11:00",13:"11:30",14:"12:00",15:"12:30",
			16:"13:00",17:"13:30",18:"14:00",19:"14:30",20:"15:00",21:"15:30",22:"16:00",23:"16:30",24:"17:00",25:"17:30",26:"18:00",27:"18:30",28:"19:00",29:"19:30",30:"20:00",31:"20:30"]
		def day = [] as Set
		def hour = [] as Set
		def Random r = new Random()

		while(day.size() <= r.nextInt(2)+5){
			day += r.nextInt(days.size() ** 1)
		}
		for (d in day){
			while(hour.size() <= r.nextInt(25)+6){
				hour += r.nextInt(hours.size() ** 1)
			}
			for (h in hour.sort()){
				departureTimes[days[d]] += hours[h]
			}
			hour.clear()
		}
		return departureTimes
	}
	def destroy = {
	}


}
