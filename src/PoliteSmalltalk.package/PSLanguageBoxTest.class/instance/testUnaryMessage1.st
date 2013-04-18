as yet unclassified
testUnaryMessage1
	| object string |
	object := ObjectSample new.
	string := object as string.
	self assert: (string =  'an ObjectSample').