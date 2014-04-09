accessing
extract tag dictionary from contents
	| rs, line number |
	rs := contents, read stream.
	line number := 0.

	[rs, at end ], while false: [
		| line, tag, description |
		line number := line number + 1.
		line := a: Log Line.
		line, read from: rs.

		tags, at: (line, tag) if absent put: [OrderedCollection, new].
		(tags, at: (line, tag)), add: line, description.
	].
