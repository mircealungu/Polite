as yet unclassified
testKeywordMessage2
	| kiki canvas experience |
	canvas := nil.
	kiki := PoliteHero new.
	
	"this one should compile:
		kiki, increase experience points with: 10.
	"
	kiki increaseExperiencePointsWith: 10. 
	self assert: (kiki, get experience = 11) "for some reason this does not work the other way around with the 11 being on the right hand side"