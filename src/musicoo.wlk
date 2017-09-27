class Musico {
	var grupoAlQuePertenece
	var albunes = []
	var esSolista
	var habilidad
	
	constructor(unGrupo,losAlbunes,unValor,unaHabilidad){
		grupoAlQuePertenece = unGrupo
		albunes = losAlbunes
		esSolista = unValor
		habilidad = unaHabilidad
		
	}
	
	method grupoAlQuePertenece(){
		return grupoAlQuePertenece
	}
	
	method albunes(){
		return albunes
	}
	
	method esSolista(){
		return esSolista
	}
	
	method habilidad(){
		return habilidad
	}


}
