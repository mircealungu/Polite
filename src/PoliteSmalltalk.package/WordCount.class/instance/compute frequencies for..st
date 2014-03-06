accessing
compute frequencies for: filtered words
	| words bag |
	
	words bag := new: Bag.
	filtered words, do: [:each | words bag, add: each.].
	^words bag, sorted counts