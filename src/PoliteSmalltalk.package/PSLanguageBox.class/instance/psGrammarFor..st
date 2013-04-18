as yet unclassified
psGrammarFor: aSmalltalkGrammar
	| grammarClass grammar |

	grammarClass := PSGrammar allSubclasses
		detect: [ :each | each concern = aSmalltalkGrammar class concern ]
		ifNone: [ self error: 'Unsupported language concern: ' , aSmalltalkGrammar class concern ].
	grammar := grammarClass new.

	^ grammar