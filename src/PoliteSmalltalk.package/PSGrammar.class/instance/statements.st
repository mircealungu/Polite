grammar
statements
	^ 	(expression wrapped , (($. asParser smalltalkToken plus , statements ==> [ :nodes | nodes first , nodes last ])
								/ $. asParser smalltalkToken star)
			==> [ :nodes | (Array with: nodes first) , (nodes last) ])
	/	(return , $. asParser smalltalkToken star
			==> [ :nodes | (Array with: nodes first) , (nodes last) ])
	/	($. asParser smalltalkToken star)