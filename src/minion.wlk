import gru.*

class Minion {
	var property feliz
	var comportamiento
	var rol
	
	constructor(humor, estado, tipo) {
		feliz = humor
		comportamiento = estado
		rol = tipo
	}
	
	method ayuda () {
		return rol.ayuda(feliz) + comportamiento.ayuda()
	} 
}

object bueno {
	method ayuda() = 3
}

object malo {
	method ayuda() = -20
}

object productor {
	method ayuda(esFeliz) = if (esFeliz) 30 else 5 
}

object social {
	method ayuda(esFeliz){
		gru.chiste() 
		if (esFeliz) gru.chiste() 
		return 0
	} 
}