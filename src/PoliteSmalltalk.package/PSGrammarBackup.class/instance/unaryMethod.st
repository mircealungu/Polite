grammar-methods
unaryMethod
	^ (sentenceIdentifierToken "/ identifierToken" ) ==> [ :node | 
		Array 
			with: (Array with: node)
			with: Array new ]