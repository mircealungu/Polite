grammar
array
	^ ${ asParser smalltalkToken , (expression delimitedBy: periodToken) optional , $} asParser smalltalkToken