import musico.*
import NoEstaEnLaPresentacion.*

class VocalistaPopular inherits Musico{

var palabraFavorita

constructor(unGrupo,losAlbunes,unaHabilidad,unaFormaDeTocar, unaFormaDeCobrar, unaPalabra) = super(unGrupo,losAlbunes,unaHabilidad, unaFormaDeTocar, unaFormaDeCobrar) {
	palabraFavorita = unaPalabra
	if(!self.esSolista()){
			habilidad -= 20
	}
}
	method cuantoCobra(unaPresentacion){ 
				
		try {self.formaDeCobrar().tocaEnLaPresentacion(unaPresentacion, self)}
		
		catch e: NoEstaEnLaPresentacion{
			console.println("el Musico" + e.getMessage())
		}
		
		if(unaPresentacion.esConcurrido()){
			return self.formaDeCobrar().cobrarPresentacion(unaPresentacion,500)
		}
		else{
		return self.formaDeCobrar().cobrarPresentacion(unaPresentacion,400)
		}
	}

	override method interpretaBienLaCancion(unaCancion){
		return unaCancion.laCancionContiene(palabraFavorita) || self.formaDeTocar().interpretarCancion(unaCancion)
	}
}