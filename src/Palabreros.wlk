class Palabreros{
	
	var palabra
	
	constructor(unaPalabra){
		palabra = unaPalabra
	}
	
	method interpretarCancion(unaCancion){
		return unaCancion.laCancionContiene(palabra)
	}



}