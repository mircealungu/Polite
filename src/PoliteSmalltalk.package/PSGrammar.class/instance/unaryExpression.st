grammar-messages
unaryExpression
	^ primary, ($, asParser, (unarySentenceMessage) ==> #second) star