as yet unclassified
pragma
	^ super pragma ==> [ :nodes | 
		(RBPragmaNode selectorParts: nodes second first arguments: nodes second second)
			addComments: nodes first comments;
			addComments: nodes last comments;
			left: nodes first start;
			right: nodes last start;
			yourself ]