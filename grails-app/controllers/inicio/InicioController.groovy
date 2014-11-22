package inicio

class InicioController {

    def index = { 
		redirect(action:"inicio")
	}
	
	def inicio = {}
	def comentarios = {}
	def nosotros = {}
	def rutas = {}
}
