accessing
retrieval of unique element from list
	<test>
	| list, five |
	list := new: OrderedCollection.
	list, add: 5.
	five := list, at: 1.
	self, assert: five = 5.