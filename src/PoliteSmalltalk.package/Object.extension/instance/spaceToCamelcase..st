*politesmalltalk
spaceToCamelcase: aMessage
	| newSelector stream |
	newSelector := WriteStream on: String new.
	stream := aMessage selector readStream.
	[ stream atEnd ]
		whileFalse: [ 
			stream peek = Character space
				ifTrue: [ 
					stream next.
					newSelector nextPut: stream next asUppercase ]
				ifFalse: [ newSelector nextPut: stream next ] 
				].
	^newSelector contents asSymbol