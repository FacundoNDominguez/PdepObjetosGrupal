
object trastienda {
	
	method capacidad(unaFecha){
		if(self.esSabado(unaFecha)){
			return  700
		}
		else
		
			return 400
	}
	
	method esConcurrido(unaFecha){
		return self.capacidad(unaFecha) > 5000
	}
	
	
	method esSabado(unaFecha){
		return unaFecha.dayOfWeek() == 6
	}


}