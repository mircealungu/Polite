tests
testUnaryMessageInExpression
	| kiki  |
	kiki := Polite Hero, new.
	
	self, assert: ((kiki, get health) =  100).
	self, assert: (kiki, get health =  100).