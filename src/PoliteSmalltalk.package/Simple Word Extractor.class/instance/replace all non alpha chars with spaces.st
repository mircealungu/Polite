accessing
replace all non alpha chars with spaces
	text := text, collect: [:e| e, if not letter: [Character, space]].
