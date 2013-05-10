as yet unclassified
keywordSentenceMethodOld

	"parser for method definition"
	^ (keywordSentenceToken , sentenceVariable) plus ==> [ :nodes | 
		Array 
			with: (nodes collect: [ :each | each first ])
			with: (nodes collect: [ :each | each second ]) ]