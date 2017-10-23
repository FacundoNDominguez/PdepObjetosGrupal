import presentacion.*
import lunaPark.*
import musico.*
import NoSePuedeAgregarMusico.*
import Cancion.*

object pdepAlooza inherits Presentacion(lunaPark,new Date(15,12,2017),[],[]){
	
	override method agregarUnMusico(unMusico){
		if(!(unMusico.habilidad() > 70)){
			throw new NoSePuedeAgregarMusico("la habilidad es menor a 70")
		}
		else
					
		if(unMusico.albumes() == null){
			throw new NoSePuedeAgregarMusico("no compuso ninguna cancion")
		} 
		else
		
		if(!(unMusico.saberTocarAliciaEnElPais())){
			throw new NoSePuedeAgregarMusico("no compuso ninguna cancion")
		}
		else
		
			musicos.add(unMusico)
		
	}



}