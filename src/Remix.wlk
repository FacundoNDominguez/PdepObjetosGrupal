import Cancion.*
class Remix inherits Cancion {
	
	constructor (cancion) = super("",0,""){
		self.remixar(cancion)
	}

	method remixar(){
		self.duracion(duracion * 3)
		self.nombre("Remix de " + nombre)
		self.letra("mueve tu cuelpo baby" + letra + " yeah oh yeah")
	}

}