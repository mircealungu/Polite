tests
testEveryInstanceVariableIsPublic
	| Iron Man, Jarvis |
	Iron Man := Polite Hero, new.
	Jarvis := Polite Hero, new.
	
	Iron Man, add companion: Jarvis.
	self, assert: (Iron Man, get companions, size = 1).