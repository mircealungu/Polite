primitives
string
	^ $' asParser , ('''''' asParser / $' asParser negate) star , $' asParser