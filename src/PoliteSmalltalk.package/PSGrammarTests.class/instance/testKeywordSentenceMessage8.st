tests
testKeywordSentenceMessage8
	self parse: 'set x: hero x' rule: #keywordSentenceMessage.
	self assert: result first size = 1.
	self assert: result second size = 1.