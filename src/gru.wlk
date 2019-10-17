import minion.*

object gru {
	var property minions = []
	var property humor = 0
	
	method cosechar () {
		minions.forEach({minion => minion.ayuda(self, campo)})
		campo.cosechar(1)
	}
	
	method agregarMinion (minion) {
		minions.add(minion)
	}
	
	method felicidad() = humor + campo.produccion()
	
	method contarleUnChiste() {
		humor += 3
	}
}

object campo {
	var property produccion = 0
	
	method cosechar (bananas) {
		produccion += bananas
	}
	
	method robarCosecha (bananas) {
		produccion = 0.max(produccion - bananas)
	}
}
