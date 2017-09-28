import Cancion.*
import presentacion.*
import guitarras.*
import musico.*

object luisAlberto inherits Musico(null,[],0){
	
	method interpretaBienLaCancion(unaCancion){
		return true
	}
	
	method cuantoCobra(unaPresentacion){
		if(unaPresentacion.laPresentacionEsAntesDeSeptiembre()){
			return 1000
		}
			return 1200
	}
	
	method modificarHabilidad(unaGuitarra){
		habilidad = 100.min(8 * (unaGuitarra.valorGuitarra()))
	}
	
}
