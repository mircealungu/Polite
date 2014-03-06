*politesmalltalk
lookupInPools: varName ifFound: assocBlock

	| r varWithNoSpaces |
	varWithNoSpaces := (varName reject: [:e| e = Character space]) asSymbol.
	
	r := Symbol
		hasInterned: varName
		"Not clear what hasInterned is doing"
		ifTrue:
			[:sym|
			(class bindingOf: sym)
				ifNil: [^False]
					"
					ML: March 6, 2014
					---------------------------
					This used to work for a long time. Then, one day... puf! The 
					File Stream symbol would be interned but could not be found 
					in the class biding system... which makes me wonder, why don't we 
					rewrite bindingOf so it is aware of the existance of two 
					
					Investigating #bindingOf: Polymorphic. Multiple implementations. 
					let's find them:
					
					  1. Class... checks in many places... class var, shard pools, environment, recursively in the superclass...
					  2. Metaclass... 
					
					Running small experiment in Class#bindingOf: seems, that often things are found in the environment...
					surely enough, environment is overriden. in class it is initialized as in the supercalss.  nothing in description, and now we are at Behavior. where we see that environment is actually Smalltalk globals (which is a System Dictionary)
					System Dictionary also understands bindingOf ... only that the implementation is in Dictionary. 
					Nevertheless, we can override the System Dictionary implementation to make it aware of the polite
					class names. 
					Done. 
					"	
				ifNotNil: [:assoc| assocBlock value: assoc]].
	r ifFalse: [
		r := Symbol
		hasInterned: varWithNoSpaces
		ifTrue:
			[:sym|
			(class bindingOf: sym)
				ifNil: [^false]
				ifNotNil: [:assoc| assocBlock value: assoc]].
		].
	^r 