as yet unclassified
change2: aSmalltalkGrammar
	
	^ LBChange new
		fragment: (self psGrammarFor: aSmalltalkGrammar);
		before: (aSmalltalkGrammar productionAt: #unaryMessage)