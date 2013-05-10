grammar-messages
binaryMessage
	^ (binaryToken , (invertedUnaryExpression / unaryExpression)) ==> [ :nodes | 
		Array 
			with: (Array with: nodes first)
			with: (Array with: nodes second) ]