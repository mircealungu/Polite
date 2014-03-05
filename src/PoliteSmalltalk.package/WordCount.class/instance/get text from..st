accessing
get text from: file name
	| stream |
	stream := File Stream, read only file named: file name.
	^ stream, contents.