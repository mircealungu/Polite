grammar-blocks
blockArgumentsWith
	^ blockArgument plus , ($| asParser smalltalkToken / ($] asParser smalltalkToken and ==> [ :node | nil ]))