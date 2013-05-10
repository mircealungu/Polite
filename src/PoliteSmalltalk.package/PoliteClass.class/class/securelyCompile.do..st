as yet unclassified
securelyCompile: aString do: aBlock
	self languageBoxes do: [ :box |
		(box default environments
			noneSatisfy: [ :env | env includesClass: self ])
			ifTrue: [ box default addClass: self ] ].
	^ aBlock
		on: CHParserError
		do: [ :err |
			| selector |
			selector := RBParser parseMethodPattern: aString.
			Transcript 
				show: self class name; show: '>>#'; show: selector;
				show: ' '; show: err messageText; cr.
			self 
				addSelector: selector
				withMethod: (LBBrokenMethod
					class: self
					selector: selector
					source: aString).
			selector ]