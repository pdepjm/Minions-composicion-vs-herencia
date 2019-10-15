import minion.*

object gru {
	var property minions = []
	var property humor = 0
	
	method cosechar () { campo.cosechar(minions.sum({minion => minion.ayuda()}) + 1) }
	
	method agregarMinion (minion)  { minions.add(minion) }
	
	method felicidad() = humor + campo.produccion()
	
	method chiste() {
		humor += 3
	}
	
}

object campo {
	var property produccion = 0
	
	method cosechar (bananas) {
		produccion += bananas
	}
}
