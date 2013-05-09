tests
testUnaryMessageInExpression
	| super mario  |
	super mario := Polite Hero, new.
	
	self, assert: ((super mario, get health) =  100).
	self, assert: (super mario, get health =  100).