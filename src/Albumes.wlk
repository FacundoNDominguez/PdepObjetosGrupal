import Cancion.*


class Albumes {
	var titulo
	var canciones
	var fechaLanzamineto
	var unidadesALaVenta
	var unidadesVendidas
	
	constructor(unTitulo,unasCanciones,unaFecha,unidadesVentas,unidadesVendido){
		titulo = unTitulo
		canciones = unasCanciones
		fechaLanzamineto = unaFecha
		unidadesALaVenta = unidadesVentas
		unidadesVendidas = unidadesVendido
	}
	
	method todasSusCancionesSonCortas(){
		return canciones.all({cancion => cancion.laCancionEsCorta()})
	}
	
	method cancionesConPalabra(palabra){
		return canciones.filter({cancion => cancion.laCancionContieneLaPalabra(palabra)})
	}
	
	method duracionAlbum(){
		return canciones.sum({cancion => cancion.duracion()})
	}
	
	method cancionConMasLetra(){
		return canciones.max({cancion => cancion.largoDeLetra()})
	}
	
	method buenaVenta(){
		return (unidadesVendidas/unidadesALaVenta) > 0.75
	}
}