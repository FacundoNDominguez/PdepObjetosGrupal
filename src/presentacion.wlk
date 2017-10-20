import lunaPark.*
import trastienda.*

class Presentacion {
	var lugar
	var fecha
	var musicos = []
	var bandas= []
	
	constructor(unLugar,unaFecha,losMusicos, lasBandas){
		lugar = unLugar
		fecha = unaFecha
		musicos = losMusicos
		bandas = lasBandas
		self.sacarAMusicosSiEstanBanda()
	}
	
	method sacarAMusicosSiEstanBanda(){
		musicos.removeAll(musicos.filter({musico => bandas.any({banda => banda.perteneceABanda(musico)})}) )
	}
	
	method lugar(){
		return lugar
	}
	
	method fecha(unaFecha){
		fecha = unaFecha
	}
	
	method fecha(){
		return fecha
	}
	
	method musicos(){
		return musicos
	}
	
	method agregarUnMusico(unMusico){
		musicos.add(unMusico)
	}
	
	method quitarUnMusico(unMusico){
		musicos.remove(unMusico)
	}
	
	method participa(unMusico){
		return musicos.contains(unMusico)
	}
	
	method costo(){
		return musicos.sum({ unMusico => unMusico.cuantoCobra(self) })
	}
	
	method esConcurrido(){
		return lugar.esConcurrido(fecha)
	}
	
	method laPresentacionEsAntesDeSeptiembre(){
		return fecha <= new Date(1,09,2017)
	}
	
	method capacidad(){
		return lugar.capacidad(fecha)
	}
	
	method agregarBanda(unaBanda){
		bandas.add(unaBanda)
		self.sacarAMusicosSiEstanBanda()
	}
	method quitarBanda(unaBanda){
		bandas.remove(unaBanda)
	}

	method magia(){
		return musicos.sum({musico => musico.habilidad()}) + bandas.sum({banda => banda.habilidad()})
	}

}