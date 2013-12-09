printing
print: (what) on stream: (a stream)

	what, with index do: [:e :count|
			a stream, next put: e.
			(count \\ 60 == 0), if true: [
					a stream, next put: Character, cr.
				] if false: [
					(count \\ 5 == 0), if true: [
						a stream, next put: Character, space.
					].
				].
		].