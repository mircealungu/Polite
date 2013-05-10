tests
testInvertedMessage
	| Iron Man |

	"inverted message used for method creation..."
	Iron Man := new: Polite Hero.
	
	self, assert: (Iron Man, isKindOf: Polite Hero).