tests
testKeywordSentenceMessage2
	self parse: 'health: kiki' rule: #keywordSentenceMessage.
	self assert: result first size = 1.
	self assert: result second size = 1.