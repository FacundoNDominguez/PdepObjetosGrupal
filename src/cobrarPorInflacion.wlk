import NoEstaEnLaPresentacion.*
class Inflacion {

	var fecha
	var porcentaje // de 0 a 1
	
	constructor(unaFecha, unPorcentaje){
		fecha = unaFecha
		porcentaje = unPorcentaje
	}
	
	method tocaEnLaPresentacion(unaPresentacion, unMusico){
		if ( !( unaPresentacion.participa(unMusico)) ){
			throw new NoEstaEnLaPresentacion("no esta en la presentacion")
		}
	}

	method cobrarPresentacion(unaPresentacion, unNumero){
		if(unaPresentacion.fecha() < fecha){
			return unNumero
		} else{
			return unNumero * (1 + porcentaje)
		}
	}
}