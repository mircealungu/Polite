tests
testUnarySequence
	| Bruce Willis |
	Bruce Willis := Polite Hero, new.
	
	self, assert: 120 	= Bruce Willis, increase health with twenty percent, get health.
	self, assert: 10 		= Bruce Willis, move ten steps forward, get position, get x.