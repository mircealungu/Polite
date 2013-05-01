as yet unclassified
sentenceVariable
	^ super sentenceVariable ==> [ :token | RBVariableNode identifierToken: token ]