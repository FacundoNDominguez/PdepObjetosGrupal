import NoEstaEnLaPresentacion.*
class Exclusividad {
		
	method tocaEnLaPresentacion(unaPresentacion, unMusico){
		if ( !( unaPresentacion.participa(unMusico)) ){
			throw new NoEstaEnLaPresentacion("no esta en la presentacion")
		}
	}
	
	method cobrarPresentacion(unaPresentacion, unNumero){
		if (unaPresentacion.musicos().size() == 1 ){
			return unNumero
		}else{
			return unNumero * 0.5
		}
	}

}