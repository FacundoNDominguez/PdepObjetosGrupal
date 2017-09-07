import musicos.*

object lunaPark {
	var fecha = new Date(20,4,2017)
	var musicos = #{luisAlberto,joaquin,lucia}
	
	method fecha(){
		return fecha
	}
	
	method musicos(){
		return musicos
	}
	
	method agregarUnMusico(unMusico){
		musicos.add(unMusico)
	}
	
	method capacidad(){
		return 9290
	}
	
	method costo(){
		return musicos.sum({ unMusico => unMusico.cuantoCobra(self) })
	}
}

object trastienda {
	var fecha = new Date(15,11,2017)
	var musicos = #{luisAlberto,joaquin,lucia} 
	var diaDelEvento = "Miercoles"
	
	method fecha(){
		return fecha
	}
	
	method musicos(){
		return musicos
	}
	
	method diaDelEvento(){
		return diaDelEvento
	}
	
	method agregarUnMusico(unMusico){
		musicos.add(unMusico)
	}
	
	method capacidad(){
		if(diaDelEvento == "Sabado"){
			return  700
		}
		else
		
			return 400
	}
	
	method costo(){
		return musicos.sum({ unMusico => unMusico.cuantoCobra(self) })
	}
}