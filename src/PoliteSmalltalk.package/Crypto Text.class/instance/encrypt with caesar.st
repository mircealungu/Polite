encryption
encrypt with caesar

	crypt := text, collect: [:e| 
			| val |
			val := e, ascii value.
			Character, value: 65 + ((val - 65 + 3) \\ 35).
		]