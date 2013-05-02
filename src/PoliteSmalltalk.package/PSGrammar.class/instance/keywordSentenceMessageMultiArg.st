as yet unclassified
keywordSentenceMessageMultiArg
	^ 
	(
		(keywordSentenceToken, (escapedSentenceVariable / onlyVariable / binaryExpression)),
		(keywordSentenceToken, (escapedSentenceVariable / onlyVariable / binaryExpression)) plus
	)
		==> [:nodes | | arr |
			arr := Array 
				with: (OrderedCollection with: nodes first)
				with: (OrderedCollection with: nodes second).
			arr first addAll: (nodes third collect: [:each | each first]).
			arr second addAll: (nodes third collect: [:each | each second]).
			arr
			]