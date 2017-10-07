import musico.*

class VocalistaPopular inherits Musico{

var palabraFavorita

constructor(unGrupo,losAlbunes,unaHabilidad, unaPalabra) = super(unGrupo,losAlbunes,unaHabilidad) {
	palabraFavorita = unaPalabra
	if(!self.esSolista()){
			habilidad -= 20
	}
}
	method cuantoCobra(unaPresentacion){ 
		if(unaPresentacion.esConcurrido()){
			return 500
		}
		else
		return 400
	}

	override method interpretaBienLaCancion(unaCancion){
		return unaCancion.laCancionContiene(palabraFavorita)
	}
}