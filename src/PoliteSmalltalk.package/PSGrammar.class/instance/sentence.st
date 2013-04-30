grammar-polite
sentence
	"replaces the PPSmalltalkGrammar#unary which is just parsing an identifier"
	^ word, (#space asParser, word) star