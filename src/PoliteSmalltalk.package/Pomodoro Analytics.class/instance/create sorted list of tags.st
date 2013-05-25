private
create sorted list of tags
	sorted :=
		tags, keys, as sorted collection: [:a :b |
				(tags, at: a), size > (tags, at: b), size.
			].