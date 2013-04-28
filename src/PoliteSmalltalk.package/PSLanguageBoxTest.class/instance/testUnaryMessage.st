as yet unclassified
testUnaryMessage
	| kiki health |
	kiki := PoliteHero new.
	health := kiki, get health.
	self assert: (health =  100).