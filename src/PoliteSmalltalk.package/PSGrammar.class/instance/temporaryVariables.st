grammar
temporaryVariables
	^ (sentenceVariable, (($, asParser, sentenceVariable) ==> #second) star)
		==> [ :nodes | nodes flatten]