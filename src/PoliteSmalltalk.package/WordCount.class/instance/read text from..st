implementation
read text from: file name
	| stream |
	stream := File Stream, file named: file name.
	^ stream, contents