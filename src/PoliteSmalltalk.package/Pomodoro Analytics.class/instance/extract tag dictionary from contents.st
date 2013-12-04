accessing
extract tag dictionary from contents
	| rs |
	rs := contents, read stream.
	[rs, at end ], while false: [
		| results, tag, description |
		results := rs, next line, split on: $,.
		tag := results, third.
		description := results, second.
		tags, at: (tag) if absent put: [OrderedCollection, new].
		(tags, at: (tag)), add: description.
	].
