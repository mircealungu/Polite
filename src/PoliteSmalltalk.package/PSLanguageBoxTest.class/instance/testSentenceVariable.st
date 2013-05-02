as yet unclassified
testSentenceVariable
	| kiki hero |
	kiki hero := Polite Hero, new.
	
	kiki hero, set the damn health: 100.
	self, assert: kiki hero, get health = 100.