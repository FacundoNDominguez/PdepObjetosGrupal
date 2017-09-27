import musicoo.*

class DeGrupo inherits Musico {

	constructor(unGrupo,losAlbunes,unValor,unaHabilidad) = super(unGrupo,losAlbunes,unValor,unaHabilidad)
	//Aca necesitamos modificar el constructor para recibir un parametro mas y llamar a aumentarHabilidad(cantidad).
	
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
	
	override method grupoAlQuePertenece(){
		return grupoAlQuePertenece
		}
		
	method grupoAlQuePertenece(unGrupo){
		grupoAlQuePertenece = unGrupo
		}
	
	method tocaEnGrupo(){
		return grupoAlQuePertenece != null
	}
	
	override method habilidad(){
		if(self.tocaEnGrupo()){
			return habilidad += 5
		}
		else
		
		return habilidad
	}
	
	method aumentarHabilidad(cantidad) {
		habilidad = habilidad + cantidad
	}


}
