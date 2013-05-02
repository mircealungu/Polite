as yet unclassified
keywordSentenceMessageSingleArg
	^ 
	(keywordSentenceToken, binaryExpression)
		==> [ :nodes |
			Array 
				with: (Array with: nodes first)
				with: (Array with: nodes second) ]