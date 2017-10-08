import Cancion.*
class MashUp inherits Cancion {
	
	constructor(canciones,letra) = super("",0,letra){
		self.mashTitulo(canciones)
		self.mashDuracion(canciones)
	}

	method mashTitulo(canciones){
		self.nombre(canciones.map({cancion => cancion.letra()}))
	}
	
	method mashDuracion(canciones){
		self.duracion(canciones.max({cancion => cancion.duracion()}))
	}
	
	
}