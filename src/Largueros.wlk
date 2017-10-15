
class Largueros{
	
	var tiempo
	
	constructor (unTiempo){
		tiempo = unTiempo
	}
	
	method interpretarCancion(unaCancion){
		return unaCancion.duracion() > tiempo
	}




}