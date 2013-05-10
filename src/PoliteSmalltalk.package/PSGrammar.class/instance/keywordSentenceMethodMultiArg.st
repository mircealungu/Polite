as yet unclassified
keywordSentenceMethodMultiArg
	^ 
	(
		(keywordSentenceToken, (escapedSentenceVariable / onlyVariable)),
		(keywordSentenceToken, (escapedSentenceVariable / onlyVariable)) plus
	)
		==> [:nodes | | arr |
			arr := Array 
				with: (OrderedCollection with: nodes first)
				with: (OrderedCollection with: nodes second).
			arr first addAll: (nodes third collect: [:each | each first]).
			arr second addAll: (nodes third collect: [:each | each second]).
			arr
			]