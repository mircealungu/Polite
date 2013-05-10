as yet unclassified
invertedUnaryExpression
	^ super invertedUnaryExpression ==> [:nodes  | |messageNodes receiverNode | 
		messageNodes := Array with: (Array with: (Array with: (nodes first)) with: #()).
		receiverNode := nodes third.
		self build: receiverNode messages: messageNodes
	].