tests
testSentenceVariable
	| king Arthur, thiefs |
	
	king Arthur := new: Polite Hero.
	king Arthur, set the damn health: 100.
	
	thiefs := A random bunch of: Thief.
	king Arthur, attack: thiefs.
	
	self, assert: king Arthur, get health = 100.
	self, assert: thiefs, first, get health = 100.
	