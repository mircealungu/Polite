as yet unclassified
testUnaryMessageInExpression
	| kiki health |
	kiki := PoliteHero new.
	self assert: ((kiki, get health) =  100).
	"this fails..."
	self assert: (kiki, get health =  100).