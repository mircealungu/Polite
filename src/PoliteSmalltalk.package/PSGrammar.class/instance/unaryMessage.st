grammar-messages
unaryMessage
	^ $, asParser, unaryToken ==> [ :nodes | 
		Array 
			with: (Array with: nodes second)
			with: Array new ]