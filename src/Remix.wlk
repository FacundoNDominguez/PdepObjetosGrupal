import Cancion.*
class Remix inherits Cancion {
	
	constructor (cancion) = super("",0,""){
		self.remixar(cancion)
	}

	method remixar(){
		self.duracion(self.duracion() * 3)
		self.nombre("Remix de " + self.nombre())
		self.letra("mueve tu cuelpo baby" + self.letra() + " yeah oh yeah")
	}

}