tests
testKeywordSentenceMessage6
	self parse: 'set x: (my hero x) set y: (my hero y)' rule: #keywordSentenceMessage.
	self assert: result first size = 2.
	self assert: result second size = 2.	