as yet unclassified
recompile: aSelector from: aClass
	"Before compiling the methods of the receiver make sure that the respective language boxes are added, this makes it possible to have the boxes and the tests in the same package."
	
	^ self
		securelyCompile: (aClass sourceCodeAt: aSelector)
		do: [ super recompile: aSelector from: aClass ]