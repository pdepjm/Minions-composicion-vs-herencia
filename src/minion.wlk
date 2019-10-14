class Minion {
	var property feliz
	
	constructor(humor) {
		feliz = humor
	}
	
	method ayuda (gru, campo) {
		var bananasProducidas = if (feliz) 30 else 5
		campo.cosechar(bananasProducidas)
	}
	
}

class MinionBueno inherits Minion {
	
	override
	method ayuda(gru, campo) {
		super(gru, campo)
		campo.cosechar(3)
	}
}

class MinionMalo inherits Minion {
	
	override
	method ayuda(gru, campo){
		super(gru, campo)
		campo.robarCosecha(20)
	} 
}

class MinionSocialBueno inherits Minion {
	
	override
	method ayuda (gru, campo) {
		if(feliz) {
			gru.contarleUnChiste()
		}
		gru.contarleUnChiste()
	}
}

class MinionSocialMalo inherits Minion {
	
	override
	method ayuda (gru, campo) {
		gru.contarleUnChiste()
		campo.robarCosecha(5)
	}
}