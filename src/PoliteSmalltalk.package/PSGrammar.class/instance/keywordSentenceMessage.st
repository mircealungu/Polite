main productions to replace
keywordSentenceMessage
	^ (keywordSentenceToken , binaryExpression) plus ==> [ :nodes | 
		Array 
			with: (nodes collect: [ :each | each first ])
			with: (nodes collect: [ :each | each second ]) ]