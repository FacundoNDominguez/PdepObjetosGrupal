
object fender {
	var valorGuitarra = 10
	
	method valorGuitarra(){
		return valorGuitarra
	}
	
	method valor(unValor){
		valorGuitarra = unValor
	}
	
}
	
object gibson {
	var estado = null
	
	method valorGuitarra(){
		if(self.laGuitarraEstaSana()){
		return 15	
		}
		return 5
	}
	
	method estado(){
		return estado
	}
	
	method estado(unEstado){
		estado = unEstado
	}
	
	method laGuitarraEstaSana(){
		return estado == "sana"
	}
	
	
}
