accessing
scramble digits: dkw
	digitskey := ((dkw, as uppercase + 'XXXXXXXXXX'), first: 10), as array.
	
	1, to: 10 do: [:index|
			| pos |
			pos := self, index of lowest letter in: digitskey.
			digitskey, at: pos put: index.
		].
	