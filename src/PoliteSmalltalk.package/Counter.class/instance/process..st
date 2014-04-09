public
process: file name
	| extractor, words, stop words |
	
	extractor := a: Simple Word Extractor.
	
	words := extractor, get words from: file name.
	stop words := extractor, get words from: 'stop.txt'.

	words, 
		remove one letter words;
		remove all in: stop words;
		print most frequently used: 20.