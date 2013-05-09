tests
testKeywordSentenceMessage7
	self parse: 'set x: heroX set y: heroY' rule: #keywordSentenceMessage.
	self assert: result first size = 2.
	self assert: result second size = 2.