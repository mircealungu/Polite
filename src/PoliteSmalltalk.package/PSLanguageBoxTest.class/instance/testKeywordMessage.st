tests
testKeywordMessage
	| William Tell, experience, newPosition, point, i1, i2 |
	William Tell := Polite Hero, new.
	
	William Tell, increase experience points with: 10.

	self, assert: (11 = William Tell, get experience).
	self, assert: (William Tell, get experience = 11).

	point := PolitePoint, new.
	point, x: 20.
	point, y: 10.
	newPosition := William Tell, 	get position, set x: (point, x) and y: 10.
		
	self, assert: (newPosition, get y = 10).
	self, assert: (William Tell, get position, get x = 20).
	
	i1 := 20.
	i2 := 30.
	William Tell, get position, set x: i1 and y: i2. 
	self, assert: (William Tell, get position, get y = 30).
	
	William Tell, get position, set x: (William Tell, get position, set x: 20 and y: (William Tell, get position, get y)) and y: 33.