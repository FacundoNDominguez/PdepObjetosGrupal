import Cancion.*
import presentacion.*
import guitarras.*

object joaquin inherits DeGrupo("Pimpinela",20,#{},5){
//	var grupoAlQuePertenece = "Pimpinela"
//	var habilidad = 20

}

object lucia inherits Popular("Pimpinela",70,#{},"familia"){
//	var grupoAlQuePertenece = "Pimpinela"
//	var habilidad = 70
//	

}

object luisAlberto inherits Musico(null,0,#{}){
//	var grupoAlQuePertenece = null
	
	method interpretaBienLaCancion(unaCancion){
		return true
	}
	
	method cuantoCobra(unaPresentacion){
		if(unaPresentacion.laPresentacionEsAntesDeSeptiembre()){
			return 1000
		}
		return 1200
	}
	
	method habilidad(unaGuitarra){
		return 100.min(8 * (unaGuitarra.valorGuitarra()))
	}
	
}

object kike inherits DeGrupo(null, 60,#{},20){
	
}

object soledad inherits Popular(null,55,#{},"amor"){
	
}
//CLases

class Musico{
	var grupoAlQuePertenece
	var habilidad
	var albumes
	
	constructor(unGrupo,unaHabilidad,susAlbumes){
		grupoAlQuePertenece = unGrupo
		habilidad = unaHabilidad
		albumes = susAlbumes
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
	
	method esMinimalista(){
		return albumes.all({album => album.todasSusCancionesSonCortas()})
	}
	
	method cancionesConPalabra(palabra){
		return albumes.map({album => album.cancionesConPalabra(palabra)})
	}
	
	method cuantoDuraLaObra(){
		return albumes.sum({album => album.duracionAlbum()})
	}
	
	method laPego(){
		return albumes.all({album => album.buenaVenta()})
	}
}


class DeGrupo inherits Musico{
	
	var aumentoPorGrupo
	
	constructor(unGrupo,unaHabilidad,susAlbumes, aumento) = super(unGrupo,unaHabilidad,susAlbumes){
		aumentoPorGrupo = aumento
	}
	
		
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
	
	method tocaSolo(unaPresentacion){ //LE SACARIA LA RESPONSBILIDAD AL MUSICO Y SE LAS PASARIA A LAS CANCIONES
		return ((unaPresentacion.musicos()).size() == 1) && self.esElMismo(unaPresentacion)
	}
	
	method esElMismo(unaPresentacion){
		return (unaPresentacion.musicos()).first() == self
	}

	method habilidad(){
		if(self.tocaEnGrupo()){
			return habilidad += aumentoPorGrupo
		}
		else
		
		return habilidad
	}
}

class Popular inherits Musico{
	var palabraClave
	
	constructor(unGrupo,unaHabilidad,susAlbumes, palabra) = super(unGrupo,unaHabilidad,susAlbumes){
		palabraClave = palabra
	}
	
	method interpretaBienLaCancion(unaCancion){
		return unaCancion.laCancionContieneLaPalabra(palabraClave)
	}
	
	method cuantoCobra(unaPresentacion){ 
		if(unaPresentacion.esConcurrido()){
			return 500
		}
		else
		return 400
	}
	
	
	method habilidad(){
		if(self.tocaEnGrupo()){
			return habilidad -= 20
		}
		else
		
		return habilidad
	}
	
}