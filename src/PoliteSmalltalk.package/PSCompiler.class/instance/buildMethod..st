private
buildMethod: aMethodNode
	aMethodNode selectorParts do: [ :each | aMethodNode addComments: each comments ].
	aMethodNode arguments do: [ :each | aMethodNode addComments: each token comments ].
	aMethodNode pragmas do: [ :eachPragma |
		aMethodNode addComments: eachPragma comments.
		eachPragma selectorParts 
			do: [ :each | aMethodNode addComments: each comments ].
		eachPragma arguments do: [ :each | 
			each isLiteralArray
				ifFalse: [ aMethodNode addComments: each token comments ] ].
		eachPragma comments: nil ].
	^ aMethodNode