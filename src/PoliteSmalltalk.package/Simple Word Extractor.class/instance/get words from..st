accessing
get words from: file name
	| contents |
	self, 	read text from: file name;
			convert to lowercase;
			replace all non alpha chars with spaces.
	^a: List of Words, with: (text, find tokens: ' ').