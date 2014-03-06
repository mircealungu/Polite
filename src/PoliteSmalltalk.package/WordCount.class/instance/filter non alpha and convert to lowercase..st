accessing
filter non alpha and convert to lowercase: text
	^text, collect: [:each| 
			each, is letter, 
				if true: [each, as lowercase]
				if false: [Character, space]. 
		]