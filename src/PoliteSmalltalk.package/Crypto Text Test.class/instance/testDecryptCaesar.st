as yet unclassified
testDecryptCaesar
	| text |
	text := new: Crypto Text.
	text, load from string: 'DVVRR QDVZH IRXQG RXWWK DWWKH UHZDV DZD\R IEHLQ JSROL WHZKL OHSUR JUDPP
LQJZH ZHUHS OHDVH G'.
	text, decrypt with caesar.
	text, print yourself.