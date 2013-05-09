tests
testKeywordSentenceMessage
	self parse: 'health: 123' rule: #keywordSentenceMessage.
	self assert: result first size = 1.
	self assert: result second size = 1.	