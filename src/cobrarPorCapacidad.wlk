import NoEstaEnLaPresentacion.*

class Capacidad {

	var capacidad
	
	constructor(unaCapacidad){
		capacidad = unaCapacidad
	}
	
	method tocaEnLaPresentacion(unaPresentacion, unMusico){
		if ( !( unaPresentacion.participa(unMusico)) ){
			throw new NoEstaEnLaPresentacion("no esta en la presentacion")
		}
	}
	
	method cobrarPresentacion(unaPresentacion, unNumero){
		if(unaPresentacion.capacidad() > capacidad){
			return unNumero
		} else {
			return unNumero - 100
		}
		
	}

}