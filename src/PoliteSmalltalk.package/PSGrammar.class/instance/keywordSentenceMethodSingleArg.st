as yet unclassified
keywordSentenceMethodSingleArg
	^ (keywordSentenceToken , (sentenceVariable / escapedSentenceVariable)) ==> [ :nodes | 
		Array 
			with: (Array with: nodes first)
			with: (Array with: nodes second) ]