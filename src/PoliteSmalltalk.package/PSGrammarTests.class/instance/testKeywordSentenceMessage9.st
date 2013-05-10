tests
testKeywordSentenceMessage9
	self parse: 'setX: 1 andY: 2' rule: #keywordSentenceMessage.
	self assert: result first size = 2.
	self assert: result second size = 2.