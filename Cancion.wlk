class Cancion {
	var nombre
	var duracion
	var letra = []

	constructor (titulo,tiempo,texto){
		nombre = titulo
		duracion = tiempo
		letra = texto 
		}
	
	method nombre(){
		return nombre
	}
	
	method nombre(unNombre){
		nombre = unNombre
	}
	
	method duracion(){
		return duracion
	}
	
	method duracion(unaDuracion){
		duracion = unaDuracion
	}
	
	method letra(){
		return letra
	}
	
	method letra(unaLetra){
		letra = unaLetra
	}

}

object cisne inherits Cancion("Cisne", 312, "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar"){}

object laFamilia inherits Cancion("La Familia", 264, "Quiero brindar por mi gente sencilla, por el amor brindo por la familia"){}