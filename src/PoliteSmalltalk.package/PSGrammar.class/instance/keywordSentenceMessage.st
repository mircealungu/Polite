as yet unclassified
keywordSentenceMessage
	^ $, asParser,  
		((keywordSentenceToken, primary) plus ==> [ :nodes |
			Array 
				with: (nodes collect: [ :each | each first ])
				with: (nodes collect: [ :each | each second ]) ]) ==> #second