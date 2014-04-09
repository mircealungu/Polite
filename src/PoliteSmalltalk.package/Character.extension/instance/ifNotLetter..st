*politesmalltalk
ifNotLetter: aBlock
	self isLetter ifTrue: [^self] ifFalse: [^aBlock value].