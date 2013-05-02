as yet unclassified
keywordSentenceMessageOld
	^ $, asParser,  
		((keywordSentenceToken, (escapedSentenceVariable / onlyVariable / binaryExpression)) plus ==> [ :nodes |
			Array 
				with: (nodes collect: [ :each | each first ])
				with: (nodes collect: [ :each | each second ]) ]) ==> #second