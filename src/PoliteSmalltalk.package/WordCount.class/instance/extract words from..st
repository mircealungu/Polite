accessing
extract words from: normalized
	^(normalized, find tokens: ' '),
		reject: [:word| word, size = 1]