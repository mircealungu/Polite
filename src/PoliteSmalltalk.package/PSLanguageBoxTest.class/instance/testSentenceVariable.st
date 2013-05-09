tests
testSentenceVariable
	| king Arthur |
	king Arthur := Polite Hero, new.
	
	king Arthur, set the damn health: 100.
	self, assert: king Arthur, get health = 100.