import Cancion.*
import presentacion.*
import guitarras.*
import presentacionn.*

object joaquin {
	var grupoAlQuePertenece = "Pimpinela"
	var habilidad = 20
	
	method interpretaBienLaCancion(unaCancion){
		return unaCancion.laCancionEsLarga()
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
	
	method grupoAlQuePertenece(){
		return grupoAlQuePertenece
		}
		
	method grupoAlQuePertenece(unGrupo){
		grupoAlQuePertenece = unGrupo
		}
	
	method tocaEnGrupo(){
		return grupoAlQuePertenece != null
	}
	
	method habilidad(){
		if(self.tocaEnGrupo()){
			return habilidad += 5
		}
		else
		
		return habilidad
	}
}

object lucia {
	var grupoAlQuePertenece = "Pimpinela"
	var habilidad = 70
	
	method interpretaBienLaCancion(unaCancion){
		return unaCancion.laCancionContieneLaPalabraFamilia()
	}
	
	method cuantoCobra(unaPresentacion){ 
		if(unaPresentacion.esConcurrido()){
			return 500
		}
		else
		return 400
	}
	
	
	method grupoAlQuePertenece(){
		return grupoAlQuePertenece
		}
	
	method grupoAlQuePertenece(unGrupo){
		grupoAlQuePertenece = unGrupo
	}
	
	method tocaEnGrupo(){
		return grupoAlQuePertenece != null
	}
	
	method habilidad(){
		if(self.tocaEnGrupo()){
			return habilidad -= 20
		}
		else
		
		return habilidad
	}
	
}

object luisAlberto {
	var grupoAlQuePertenece = null
	
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
