as yet unclassified
unarySentenceMethod

	"parser for method definition"
	^ sentenceIdentifierToken ==> [ :node | 
		Array 
			with: (Array with: node)
			with: Array new ]