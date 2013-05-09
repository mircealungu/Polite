tests
testKeywordSentenceMessage5
	self parse: 'set x: (my hero, get x) set y: (my hero, get y)' rule: #keywordSentenceMessage.
	self assert: result first size = 2.
	self assert: result second size = 2.	