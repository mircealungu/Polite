as yet unclassified
unaryMessage
	^ unaryToken ==> [:node | "self halt."
		Array 
			with: (Array with: node) 
			with: Array new ]