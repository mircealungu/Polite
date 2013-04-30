private
addStatements: aCollection into: aNode
	aCollection isNil 
		ifTrue: [ ^ aNode ].
	aCollection do: [ :each |
		each class == PPSmalltalkToken
			ifFalse: [ aNode addNode:  each ]
			ifTrue: [
				aNode statements isEmpty
					ifTrue: [ aNode addComments: each comments ]
					ifFalse: [ aNode statements last addComments: each comments ].
				aNode periods: (aNode periods asOrderedCollection
					addLast: each start;
					yourself) ] ].
	^ aNode