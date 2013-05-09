tests
testUnaryMessage
	| frodo, health |
	frodo := Polite Hero, new.
	health := frodo, get health.
	
	self, assert: (health =  100).