as yet unclassified
testCaesar
	| text |
	text := new: Crypto Text.
	text, load from string: 'as soon as we found out that there was a way of being polite while programming, we were pleased.'.
	text, encrypt with caesar.
	text, print yourself.