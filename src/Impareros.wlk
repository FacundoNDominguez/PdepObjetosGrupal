import musico.*

class Impareros inherits Musico {
	
	constructor(unGrupo,losAlbumes,unaHabilidad) = super(unGrupo,losAlbumes,unaHabilidad){}
	
	override method interpretaBienLaCancion(unaCancion){
		return unaCancion.duracion().odd()
	}



}