accessing
load from: a file
	raw := (Standard File Stream, readOnlyFileNamed: a file), contents of entire file.
	text := self, remove extra characters from: raw, as uppercase.