import minion.*

object gru {
	var property minions = []
	var property bananas = 0
	
	method cosechar () {
		bananas += minions.sum({minion => minion.ayuda()}) + 1
	}
	
	method agregarMinion () {
		minions.add(new Minion())
	}
	
	
}
