as yet unclassified
change: aSmalltalkGrammar old: var
	
	| unaryMessageChange identifierChange keywordMessageChange |
	
	unaryMessageChange := LBChange new
		fragment: ((self psGrammarFor: aSmalltalkGrammar) productionAt: #unarySentenceMessage);
		before: (aSmalltalkGrammar productionAt: #unaryMessage).
		
	identifierChange := LBChange new
		fragment: ((self psGrammarFor: aSmalltalkGrammar) productionAt: #unarySentenceMethod);
		before: (aSmalltalkGrammar productionAt: #unaryMethod).
		
	keywordMessageChange := LBChange new
		fragment: ((self psGrammarFor: aSmalltalkGrammar) productionAt: #keywordSentenceMethod);
		before: (aSmalltalkGrammar productionAt: #keywordMethod).
	
	^ unaryMessageChange, identifierChange, keywordMessageChange.