accessing
process: file name
	| text, normalized, words, counts |
	text := self, get text from: file name.
	normalized := self, normalize: text.
	words := normalized, find tokens: ' '.
	counts := Bag, new.
	words, do: [:each | 
			counts, add: each.
			].
	^counts