grammar-messages
unaryMessage
	self halt.
	^ $, asParser, unaryToken ==> [ :nodes | 
		Array 
			with: (Array with: nodes second)
			with: Array new ]