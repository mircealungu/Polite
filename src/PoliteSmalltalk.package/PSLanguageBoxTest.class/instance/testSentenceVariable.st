accessing
testSentenceVariable
	| kiki hero |
	kiki hero := PoliteHero, new.
	
	kiki hero, set the damn health: 100.
	self, assert: kiki hero, get health = 100.