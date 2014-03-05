accessing
normalize: text
	^text, collect: [:each| 
			each, isLetter, 
				ifTrue: [each, asLowercase]
				ifFalse: [Character, space]. 
		]