import gru.*

class Minion {
	var property feliz
	var comportamiento
	
	constructor(humor, estado) {
		feliz = humor
		comportamiento = estado
	}
	
	method ayuda () {
		return self.ayudaPorRol() + comportamiento.ayuda()
	} 
}

class Productor inherits Minion{
	method ayudaPorRol() = if (feliz) 30 else 5 
}

class Social inherits Minion{
	override method ayudaPorRol(){
		gru.chiste() 
		if (feliz) gru.chiste() 
		return 0
	} 
}

object bueno {
	method ayuda() = 3
}

object malo {
	method ayuda() = -20
}

