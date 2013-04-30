as yet unclassified
keywordSentenceMethod

	"parser for method definition"
	^ (keywordSentenceToken , variable) plus ==> [ :nodes | 
		Array 
			with: (nodes collect: [ :each | each first ])
			with: (nodes collect: [ :each | each second ]) ]