*politesmalltalk
bindingOf: varName
	"SystemDictionaries includes symbols only"

	"ML: This next line is the old implementation. "
	"^ super bindingOf: varName asSymbol"
	
	"The new implementation is a bit redundant with the one 
	from dictionary. "
	| varWithNoSpaces |
	varWithNoSpaces := (varName reject: [:e| e = Character space]) asSymbol.
	
	^self associationAt: varName ifAbsent:[
		self associationAt: varWithNoSpaces ifAbsent:[
		nil]]