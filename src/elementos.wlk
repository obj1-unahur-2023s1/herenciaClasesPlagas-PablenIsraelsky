class Barrio {
	const elementos = []
	
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}
	
	method agregarElementos(elementosVarios) {
		elementos.addAll(elementosVarios)
	}
	
	method esCopado() { // Boolean - si el barrio es copado
		return self.cantidadElementosBuenos() > self.cantidadElementoMalos()
	}
	
	method cantidadElementosBuenos() { // Número - cant elem buenos
		return elementos.count({e => e.esBueno()})
	}
	
	method cantidadElementoMalos() { // Número - cant elem malos
		return elementos.count({e => not e.esBueno()})
	}
}

class Hogar {
	var property nivelMugre = 0// Número
	var property nivelConfort = 100// Número
	
	method esBueno() { // Método para saber si es bueno - Boolean
		return nivelMugre <= (nivelConfort / 2)
	}
}

class Huerta {
	var property capacidadProduccion = 50// Medida en kg por mes - Número
	var property nivelHuerta = 10// Número
	
	method esBueno() { // Método para saber si es bueno - Boolean
		return capacidadProduccion > nivelHuerta
	}
}

class Mascota {
	var property nivelSalud = 251
	
	method esBueno() { // Método para saber si es bueno - Boolean
		return nivelSalud > 250
	}
}
