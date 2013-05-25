tests
testMessageCascade
	| sir Lancelot, his health |
	
	sir Lancelot := new: Polite Hero.
	
	his health := sir Lancelot, 
		get experience; 
		set health: 10;
		get health.
	

	self, assert: (his health = 10).