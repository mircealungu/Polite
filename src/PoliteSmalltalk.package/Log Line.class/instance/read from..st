accessing
read from: rs
	| parts |
	parts:= rs, next line, split on: $,.
	description := parts, second.
	parts, size = 3, 
		if true: [ tag := parts, third, with blanks trimmed]
		if false: [tag := '<unspecified>'].