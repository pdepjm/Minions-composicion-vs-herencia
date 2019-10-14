class Minion {
	var property feliz
	
	constructor(humor) {
		feliz = humor
	}
	
	method ayuda () = if (feliz) 30 else 5
	
}

class MinionBueno inherits Minion {
	
	override
	method ayuda () = super() + 3
}

class MinionMalo inherits Minion {
	
	override
	method ayuda () = super() - 20
}