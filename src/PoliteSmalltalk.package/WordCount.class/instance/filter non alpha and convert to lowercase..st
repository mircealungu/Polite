accessing
filter non alpha and convert to lowercase: chars
	^chars, collect: [:char| 
			char, is letter, 
				if true: [char, as lowercase]
				if false: [Character, space]]