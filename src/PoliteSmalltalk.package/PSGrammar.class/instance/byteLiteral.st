grammar-literals
byteLiteral
	^ '#[' asParser smalltalkToken , numberLiteral star , $] asParser smalltalkToken