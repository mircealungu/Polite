accessing
index of lowest letter in: key
	| lowest,  pos |

	1, to: (key, size) do: [:index|
			| cur letter |
			cur letter := key, at: index.
			(cur letter, is kind of: Character), if true: [
					((lowest, is nil), or: [cur letter < lowest]), if true: [
							lowest := cur letter.
							pos := index.
						]
				].	
		].
	^pos