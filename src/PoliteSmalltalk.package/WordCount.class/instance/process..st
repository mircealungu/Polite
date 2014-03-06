accessing
process: file name
	| text, normalized, words, words bag |
	
	text := self, get text from: file name.
	normalized := self, normalize: text.
	words := normalized, find tokens: ' '.

	words bag := new: Bag.
	words, do: [:each | 
			words bag, add: each.
			].
	^words bag, sorted counts