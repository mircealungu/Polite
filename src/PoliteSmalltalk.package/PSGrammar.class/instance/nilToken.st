grammar-tokens
nilToken
	^ ('nil' asParser , #word asParser not) smalltalkToken