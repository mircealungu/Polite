grammar-blocks
blockArgumentsWith
	^ 
	(blockArgument, blockArgument star) ==> [:nodes | (OrderedCollection with: nodes first) addAll: nodes second; yourself], 
	($| asParser smalltalkToken / ($] asParser smalltalkToken and ==> [ :node | nil ]))