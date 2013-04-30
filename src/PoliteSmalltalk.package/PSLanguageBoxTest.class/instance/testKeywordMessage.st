as yet unclassified
testKeywordMessage
	| kiki canvas experience newPosition point |
	canvas := nil.
	kiki := PoliteHero new.
	
	kiki, increase experience points with: 10.
	

	self assert: (11 = kiki, get experience).
	self assert: (kiki, get experience = 11).

	point := PolitePoint new.
	point x: 20.
	point y: 10.
	newPosition := kiki, 	get position, set x: (point x) and y: 10.
		
	self assert: (newPosition, get y = 10).
	self assert: (kiki, get position, get x = 20).