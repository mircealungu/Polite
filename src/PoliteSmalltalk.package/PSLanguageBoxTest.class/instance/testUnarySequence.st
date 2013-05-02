tests
testUnarySequence
	| kiki |
	kiki := Polite Hero, new.
	
	self, assert: 120 	= kiki, increase health with twenty percent, get health.
	self, assert: 10 		= kiki, move ten steps forward, get position, get x.