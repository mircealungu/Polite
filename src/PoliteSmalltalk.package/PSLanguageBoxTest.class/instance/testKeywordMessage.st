as yet unclassified
testKeywordMessage
	| kiki, experience, newPosition, point, i1, i2 |
	kiki := PoliteHero, new.

	kiki, increase experience points with: 10.
	

	self, assert: (11 = kiki, get experience).
	self, assert: (kiki, get experience = 11).

	point := PolitePoint, new.
	point, x: 20.
	point, y: 10.
	newPosition := kiki, 	get position, set x: (point, x) and y: 10.
		
	self, assert: (newPosition, get y = 10).
	self, assert: (kiki, get position, get x = 20).
	
	i1 := 20.
	i2 := 30.
	kiki, get position, set x: i1 and y: i2. 
	self, assert: (kiki, get position, get y = 30).
	
	kiki, get position, set x: (kiki, get position, set x: 20 and y: (kiki, get position, get y)) and y: 33.