import musico.*

class Largueros inherits Musico{
	
	var tiempo
	
	constructor(unGrupo,losAlbumes,unaHabilidad,unosSegundos) = super(unGrupo,losAlbumes,unaHabilidad){
		tiempo = unosSegundos
	}
	
	override method interpretaBienLaCancion(unaCancion){
		return unaCancion.duracion() > tiempo
	}



}