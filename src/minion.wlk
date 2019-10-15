class Minion {
	var property feliz
	var comportamiento
	
	constructor(humor, estado) {
		feliz = humor
		comportamiento = estado
	}
	
	method ayuda () {
		var bananas = 30 
		if (!feliz) bananas = 5
		return bananas + comportamiento.ayuda()
	} 
}

object bueno {
	method ayuda() = 3
}

object malo {
	method ayuda() = -20
}
