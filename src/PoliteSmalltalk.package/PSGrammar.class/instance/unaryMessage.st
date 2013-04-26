as yet unclassified
unaryMessage
	^ $, asParser, unaryToken ==> [:nodes | "self halt."
		Array 
			with: (Array with: nodes second) 
			with: Array new ]