accessing
extract words from: text
	^(text, find tokens: ' '),
		reject: [:word| word, size = 1]