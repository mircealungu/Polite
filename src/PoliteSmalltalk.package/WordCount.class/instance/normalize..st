accessing
normalize: text
	^text, collect: [:each| 
			each, is letter, 
				if true: [each, as lowercase]
				if false: [Character, space]. 
		]