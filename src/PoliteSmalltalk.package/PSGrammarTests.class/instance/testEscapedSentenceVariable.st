tests
testEscapedSentenceVariable
	self parse: '(my hero)' rule: #escapedSentenceVariable.
	self assert: (result isKindOf: PPSmalltalkToken).