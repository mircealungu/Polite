accessing
printOn: a stream
	| count |
	count := 0.
	text, do: [:e|
			count := count + 1.
			a stream, next put: e.
			(count \\ 60 == 0), if true: [
					a stream, next put: Character, cr.
				] if false: [
					(count \\ 5 == 0), if true: [
						a stream, next put: Character, space.
					].
				].
		].