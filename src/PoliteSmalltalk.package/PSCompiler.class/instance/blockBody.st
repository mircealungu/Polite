as yet unclassified
blockBody
	^ super blockBody ==> [ :nodes | 
		| result |
		result := RBBlockNode arguments: nodes first first body: nodes last.
		nodes first last isNil
			ifFalse: [ result bar: nodes first last start ].
		result ]