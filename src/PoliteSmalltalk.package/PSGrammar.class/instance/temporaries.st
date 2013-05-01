grammar
temporaries
	^ ($| asParser smalltalkToken
		,
			((sentenceVariable , (($, asParser smalltalkToken , sentenceVariable) ==> [ :nodes | nodes second ]) star)
				==> [ :nodes | nodes flatten ]) optional , $| asParser smalltalkToken) optional
		==> [ :nodes | nodes ifNil: [ #() ] ]