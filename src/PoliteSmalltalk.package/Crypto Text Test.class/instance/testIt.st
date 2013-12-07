as yet unclassified
testIt
	| text |
	text := new: Crypto Text.
	text, load from: '/Users/mircealungu/Projects/PoliteSmalltalk/in.txt'.
	text, inspect.
	Transcript, 
		clear;
		show: text.