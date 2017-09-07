class Guitarra {
	
	var valor 
	
	constructor(unValor){
		valor = unValor
	}
	
	method valor(unValor){
		valor = unValor
	}
	
	method valor(){
		return valor
	}
}


object fender inherits Guitarra(10){}

object gibson inherits Guitarra(15){
	var estado = "sana"
	
	method maltratar(){
		estado = "rota"
		valor = 5
	}
}

