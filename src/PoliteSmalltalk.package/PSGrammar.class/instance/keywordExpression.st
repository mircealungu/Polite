grammar-messages
keywordExpression
	^ binaryExpression , ($, asParser, (keywordSentenceMessage / keywordMessage) ==> #second) optional 