as yet unclassified
symbolLiteral
	^ super symbolLiteral ==> [ :tokens | RBLiteralValueNode literalToken: (RBLiteralToken value: (self buildString: tokens last value) asSymbol start: tokens first start stop: tokens last stop) ]