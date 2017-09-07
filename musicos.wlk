import Cancion.*
import presentacion.*

object joaquin {
	var grupoAlQuePertenece = "Pimpinela"
	var habilidad = 20
	
	method interpretaBienLaCancion(unaCancion){
		return unaCancion.duracion() > 300
	}
	
	method cuantoCobra(unaPresentacion){
		if (self.tocaSolo(unaPresentacion)){
			return 100
			}
		else
			return 50	
	}
	
	method tocaSolo(unaPresentacion){
		return (unaPresentacion.musicos()).size() == 1
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
		return (unaCancion.letra()).contains("familia")
	}
	
	method cuantoCobra(unaPresentacion){ 
		if(self.esConcurrido(unaPresentacion)){
			return 500
		}
		else
		return 400
	}
	
	method esConcurrido(unaPresentacion){
		return unaPresentacion.capacidad() > 5000
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
	var habilidad = 0
	var valorGuitarra = 0 
	
	method interpretaBienLaCancion(unaCancion){
		return true
	}
	
	method cuantoCobra(unaPresentacion){
		if(self.laPresentacionEsAntesDeSeptiembre(unaPresentacion)){
			return 1000 //calcular bien el cachet
		}
		else
		return 1200 // calcular bien el cachet
	}
	
	method laPresentacionEsAntesDeSeptiembre(unaPresentacion){
		return unaPresentacion.fecha() <= 1/09/2017 
	}
	
	method grupoAlQuePertenece(){
		return grupoAlQuePertenece
		}
		
		method grupoAlQuePertenece(unGrupo){
		grupoAlQuePertenece = unGrupo
	}
	
	
	method habilidad(){
		return habilidad //CALCULAR LA HABILIDAD
	}
	
	method valorGuitarra(){
		return valorGuitarra
	}
	
	method valorGuitarra(unValor){
		valorGuitarra = unValor
	}
}
