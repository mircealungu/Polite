tests
testConverter
	| col, second|
	col := new: OrderedCollection.
	col, add all: #(1 2 3).
	self, assert: (col, size = 3).
	""
	second := an: OrderedCollection.
	self, assert: (second, is empty).