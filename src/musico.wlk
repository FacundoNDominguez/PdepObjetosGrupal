class Musico {
	var grupoAlQuePertenece
	var albumes = []
	var habilidad
	
	constructor(unGrupo,losAlbumes,unaHabilidad){
		grupoAlQuePertenece = unGrupo
		albumes = losAlbumes
		habilidad = unaHabilidad
		
	}
	
	method agregarAlbum(unAlbum){
		albumes.add(unAlbum)
	}
	
	method grupoAlQuePertenece(unValor){
		grupoAlQuePertenece = unValor
	}
	
	method grupoAlQuePertenece(){
		return grupoAlQuePertenece
	}
	
	method albumes(){
		return albumes
	}
	
	method esSolista(){
		return self.grupoAlQuePertenece() == null
	}
	
	method habilidad(){
		return habilidad
	}
	
	method esMinimalista(){
		return albumes.all({album => album.todasSusCancionesSonCortas()})
	}
	
	method cancionesQueTienen(unaPalabra){
		return albumes.flatMap({ unAlbum => unAlbum.cancionesConPalabra(unaPalabra) })
	}
	
	method cuantoDuraLaObra(){
		return albumes.sum({ unAlbum => unAlbum.duracionAlbum() })
	}
	
	method cancionMasLarga(){
		return albumes.max({ unAlbum => unAlbum.cancionConMasLetra() })
	}
	
	method laPego(){
		//return albumes.forEach({ unAlbum => unAlbum.buenaVenta() }) //me parece que va un all en vez de un forEach
		return albumes.all({ unAlbum => unAlbum.buenaVenta() })
	}
	
	method interpretaBienLaCancion(unaCancion){
		return habilidad > 60 || self.esDeSuAutoria(unaCancion)  
	}
	
	method esDeSuAutoria(unaCancion){
		return albumes.any({ album => album.perteneceAlALbum(unaCancion) })
	}
	
	method saberTocarAliciaEnElPais(){
		const letraDeAlicia = "Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz."
		
		var cancionAlicia = (self.cancionesQueTienen(letraDeAlicia)).first()
		
		return (cancionAlicia.duracion() == 510 ) && (cancionAlicia.titulo() == "Canción de Alicia en el país")
	}

}
