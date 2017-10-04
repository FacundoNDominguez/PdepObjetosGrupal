import Cancion.*
class Remix inherits Cancion {
	
	constructor (titulo,tiempo,texto) = super(titulo,tiempo,texto){
		self.remixar()
	}

	method remixar(){
		self.duracion(tiempo * 3)
		
	}

}