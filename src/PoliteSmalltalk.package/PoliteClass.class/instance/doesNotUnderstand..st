as yet unclassified
doesNotUnderstand: a message
	""
	('get*', match: a message, selector), 
		ifTrue: [
				| after get |
				after get  := a message, selector, allButFirst: 4.
				^ self, instVarNamed: after get.
			]
		ifFalse: [
				^ super, doesNotUnderstand: a message.
			].