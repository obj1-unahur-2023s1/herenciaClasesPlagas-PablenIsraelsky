import elementos.*

class Plaga { 
	var property poblacion
	
	method nivelDanio() {return 0}
	
	method transmiteEnfermedades() {
		return poblacion > 10
	}
	
	method atacar(elemento) {
		self.consecuenciaAtaque()
		elemento.recibirDanio()
	}
	
	method consecuenciaAtaque() {
		poblacion = poblacion + (poblacion * 0.1)
	}
}

class Cucaracha inherits Plaga {
	var property pesoPromedio
	
	override method nivelDanio() = poblacion / 2
	
	override method transmiteEnfermedades() {
		return super() and (pesoPromedio >= 10)
	}
	
	override method consecuenciaAtaque() {
		super()
		pesoPromedio += 2
	}
}

class Pulga inherits Plaga {
	
	override method nivelDanio() = poblacion * 2
	
}

class Garrapata inherits Pulga {
	
	override method consecuenciaAtaque() {
		poblacion = poblacion + (poblacion * 0.2)
	}
}

class Mosquito inherits Plaga {
	
	override method nivelDanio() = poblacion
	
	override method transmiteEnfermedades() {
		return super() and (poblacion % 3 == 0)
	}
}
