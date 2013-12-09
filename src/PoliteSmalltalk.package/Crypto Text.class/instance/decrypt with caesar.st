encryption
decrypt with caesar

	crypt := text, collect: [:e| 
			Character, value: (e, ascii value - 3)
		]