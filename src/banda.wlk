
class Banda {
	
	var musicos
	var representante
	
	constructor(unosMusicos, unRepresentante){
		musicos = unosMusicos
		representante = unRepresentante
		self.asignarAEstaBanda(musicos)
	}

	method asignarAEstaBanda(unosMusicos){
		unosMusicos.forEach({unMusico => unMusico.grupoAlQuePertenece(self)})
	}

	method habilidad(){
		return musicos.sum({unMusico => unMusico.habilidad()})
	}
	
	method cuantoCobra(){
		return (musicos.sum({unMusico => unMusico.cuantoCobra()})) + representante.cuantoCobra()
	}
	
	method interpretaBienLaCancion(){
		return musicos.all({unMusico=> unMusico.interpretaBienLaCancion()})
	}
	
	method perteneceABanda(musico){
		return musicos.contains(musico)
	}

}