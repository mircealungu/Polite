accessing
compute frequencies for: words
	| words bag |
	"Bags: wonderful collection objects that count instances"
	words bag := new: Bag.
	words, do: [:word | words bag, add: word.].
	^words bag, sorted counts