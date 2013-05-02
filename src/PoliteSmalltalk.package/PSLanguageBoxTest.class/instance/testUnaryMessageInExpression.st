as yet unclassified
testUnaryMessageInExpression
	| kiki  |
	kiki := PoliteHero, new.
	
	self, assert: ((kiki, get health) =  100).
	self, assert: (kiki, get health =  100).