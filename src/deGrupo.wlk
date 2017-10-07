import musico.*
import presentacion.*

class DeGrupo inherits Musico {

	constructor(unGrupo,losAlbunes,unaHabilidad,cantidadAumentar) = super(unGrupo,losAlbunes,unaHabilidad) {
			self.aumentarHabilidad(cantidadAumentar)
	}
	
	method cuantoCobra(unaPresentacion){
		if (self.tocaSolo(unaPresentacion)){
			return 100
			}
		else
			return 50	
	}
	
	method tocaSolo(unaPresentacion){
		return ((unaPresentacion.musicos()).size() == 1) && self.esElMismo(unaPresentacion)
	}
	
	method esElMismo(unaPresentacion){
		return (unaPresentacion.musicos()).first() == self
	}
	
	method aumentarHabilidad(cantidad) {
		if(!self.esSolista()){
			habilidad += cantidad
		}
	}
	
	override method interpretaBienLaCancion(unaCancion){
		return (unaCancion.duracion() > 300)
	}

}
