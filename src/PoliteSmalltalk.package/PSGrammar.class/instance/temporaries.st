grammar
temporaries
	^ ($| asParser smalltalkToken, 
		(temporaryVariables optional ==> [ :nodes | nodes ifNil: [ #() ] ]), 
	    $| asParser smalltalkToken) optional	==> [ :nodes | nodes ifNil: [ #() ] ]