as yet unclassified
testUnaryMessage
	| object string |
	object := ObjectSample new.
	string := object as string.
	self assert: (string =  'an ObjectSample').