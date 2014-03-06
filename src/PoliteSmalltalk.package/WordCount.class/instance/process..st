accessing
process: file name
	| text, normalized, words, filtered words, frequencies |
	
	text := 				self, get text from: file name.
	normalized := 		self, filter non alpha and convert to lowercase: text.
	words := 			self, extract words from: normalized.
	filtered words := 	self, remove stop words from: words.
	frequencies := 		self, compute frequencies for: filtered words.
	
	^frequencies