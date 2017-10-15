import musico.*
import presentacion.*
import NoEstaEnLaPresentacion.*

class DeGrupo inherits Musico {

	constructor(unGrupo,losAlbunes,unaHabilidad,unaFormaDeTocar, unaFormaDeCobrar,cantidadAumentar) = super(unGrupo,losAlbunes,unaHabilidad,unaFormaDeTocar, unaFormaDeCobrar) {
			self.aumentarHabilidad(cantidadAumentar)
	}
	
	method cuantoCobra(unaPresentacion){
		
		try {self.formaDeCobrar().tocaEnLaPresentacion(unaPresentacion, self)}
		
		catch e: NoEstaEnLaPresentacion{
			console.println("el Musico" + e.getMessage())
		}
		
		if (self.tocaSolo(unaPresentacion)){
			return self.formaDeCobrar().cobrarPresentacion(unaPresentacion,100)
			}
		else
			return self.formaDeCobrar().cobrarPresentacion(unaPresentacion,50)	
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
		return (unaCancion.duracion() < 300) || self.formaDeTocar().interpretarCancion(unaCancion)
	}

}
