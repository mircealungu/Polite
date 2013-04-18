as yet unclassified
change: aSmalltalkGrammar
	
	| unaryMessageChange identifierChange |
	
	unaryMessageChange := LBChange new
		fragment: ((self psGrammarFor: aSmalltalkGrammar) productionAt: #unaryMessage);
		before: (aSmalltalkGrammar productionAt: #unaryMessage).
		
	identifierChange := LBChange new
		fragment: ((self psGrammarFor: aSmalltalkGrammar) productionAt: #unaryMethod);
		before: (aSmalltalkGrammar productionAt: #unaryMethod).
	
	^ unaryMessageChange, identifierChange.