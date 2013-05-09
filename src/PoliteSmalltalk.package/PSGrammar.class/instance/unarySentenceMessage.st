as yet unclassified
unarySentenceMessage

	"parser for message send"
	^ unarySentenceToken ==> [:node | 
		Array 
			with: (Array with: node ) 
			with: Array new ]