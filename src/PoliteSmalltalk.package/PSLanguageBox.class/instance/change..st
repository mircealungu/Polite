as yet unclassified
change: aSmalltalkGrammar
	
	| start |
	
	start := LBChange new
		fragment: ((self psGrammarFor: aSmalltalkGrammar) productionAt: #startMethod);
		replace: (aSmalltalkGrammar productionAt: #startMethod).
	
	
	^ start