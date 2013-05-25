*politesmalltalk
lookupInPools: varName ifFound: assocBlock

	| r |
	r := Symbol
		hasInterned: varName
		ifTrue:
			[:sym|
			(class bindingOf: sym)
				ifNil: [^false]
				ifNotNil: [:assoc| assocBlock value: assoc]].
	r ifFalse: [
		r := Symbol
		hasInterned: (varName reject: [:e| e = Character space]) asSymbol
		ifTrue:
			[:sym|
			(class bindingOf: sym)
				ifNil: [^false]
				ifNotNil: [:assoc| assocBlock value: assoc]].
		].
	^r 