grammar-methods
unaryMethod
	^ (sentenceIdentifierToken / identifierToken ) ==> [ :node | 
		Transcript show: 'unary method!'.
		Array 
			with: (Array with: node)
			with: Array new ]