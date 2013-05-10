tests
testBlockVariables
	| Iron Man |
	Iron Man := Polite Hero, new.
	Iron Man, get companions, do: [ :each companion :each beer |
			each companion, drink a beer.
		].