accessing
test retrieval of unique element from list
	| list, five |
	list := OrderedCollection, new.
	list, add: 5.
	five := list, at: 1.
	self, assert: five = 5.