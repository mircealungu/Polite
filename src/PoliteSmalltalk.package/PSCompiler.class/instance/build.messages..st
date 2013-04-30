private
build: aNode messages: anArray 
	^ (anArray isNil or: [ anArray isEmpty ]) 
		ifTrue: [ aNode ]
		ifFalse: [
			anArray 
				inject: aNode
				into: [ :rec :msg | 
					msg isNil 
						ifTrue: [ rec ]
						ifFalse: [
							RBMessageNode 
								receiver: rec
								selectorParts: msg first
								arguments: msg second ] ] ]