tests
testUnaryMessage
	| kiki, health |
	kiki := Polite Hero, new.
	health := kiki, get health.
	
	self, assert: (health =  100).