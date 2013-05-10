tests
testInvertedMessage
	| Iron Man |
	Iron Man := Polite Hero, new.
	"or it can also be written as..."
	Iron Man := new: Polite Hero.
	
	self, assert: (Iron Man, isKindOf: Polite Hero).