accessing
read text from: file name
	| stream |
	stream := Read Only File Stream, for: file name.
	text := stream, get contents.
