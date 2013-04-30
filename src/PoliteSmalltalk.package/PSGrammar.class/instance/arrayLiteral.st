grammar-literals
arrayLiteral
	^ '#(' asParser smalltalkToken , arrayItem star , $) asParser smalltalkToken