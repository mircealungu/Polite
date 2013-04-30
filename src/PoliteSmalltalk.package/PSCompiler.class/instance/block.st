as yet unclassified
block
	^ super block map: [ :leftToken :blockNode :rightToken | blockNode left: leftToken start; right: rightToken start ]