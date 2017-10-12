import musico.*

class Palabreros inherits Musico {
	
	var palabraFavorita
	
	constructor(unGrupo,losAlbumes,unaHabilidad,unaPalabra) = super(unGrupo,losAlbumes,unaHabilidad){
		palabraFavorita = unaPalabra
	}
	
	method palabraFavorita(){
		return palabraFavorita
	}
	
	override method interpretaBienLaCancion(unaCancion){
		return unaCancion.laCancionContiene(palabraFavorita)
	}
	



}