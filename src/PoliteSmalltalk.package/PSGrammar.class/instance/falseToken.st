grammar-tokens
falseToken
	^ ('false' asParser , #word asParser not) smalltalkToken