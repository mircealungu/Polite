tests
testKeywordSentenceMessage4
	self parse: 'health: kiki hero, get health' rule: #keywordSentenceMessage.
	self assert: result first size = 1.
	self assert: result second size = 1.	