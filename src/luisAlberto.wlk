import Cancion.*
import presentacion.*
import guitarras.*

object luisAlberto {
	var grupoAlQuePertenece = null
	var albumes =[]
	
	method albumes(){
		return albumes
	}
	
	method interpretaBienLaCancion(unaCancion){
		return true
	}
	
	method cuantoCobra(unaPresentacion){
		if(unaPresentacion.laPresentacionEsAntesDeSeptiembre()){
			return 1000
		}
			return 1200
	}
	
	method grupoAlQuePertenece(){
		return grupoAlQuePertenece
		}
		
	method grupoAlQuePertenece(unGrupo){
		grupoAlQuePertenece = unGrupo
	}
	
	method habilidad(unaGuitarra){
		return 100.min(8 * (unaGuitarra.valorGuitarra()))
	}
	
}
