package inicio

class InicioController {

    def index = { 
		redirect(action:"inicio")
	}
	
	def inicio = {}
	def nosotros = {}
	def rutas = {}
	def comentarios = {}
}
