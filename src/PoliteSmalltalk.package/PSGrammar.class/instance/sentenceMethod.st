as yet unclassified
sentenceMethod

	"parser for method definition"
	^ identifierToken ==> [ :node | 
		Array 
			with: (Array with: node)
			with: Array new ]