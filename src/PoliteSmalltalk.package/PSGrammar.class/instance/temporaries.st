grammar
temporaries
	^ ($| asParser smalltalkToken , variable star , $| asParser smalltalkToken) optional ==> [ :nodes | nodes ifNil: [ #() ] ]