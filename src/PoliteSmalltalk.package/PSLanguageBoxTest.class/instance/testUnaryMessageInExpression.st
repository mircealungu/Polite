as yet unclassified
testUnaryMessageInExpression
	| kiki health |
	kiki := PoliteHero new.
	self assert: ((kiki, get health) =  100).
	self assert: (kiki, get health =  100).