main productions to replace
unarySentenceMessage

	"parser for message send"
	^ $, asParser, unarySentenceToken ==> [:nodes | "self halt."
		Array 
			with: (Array with: nodes second) 
			with: Array new ]