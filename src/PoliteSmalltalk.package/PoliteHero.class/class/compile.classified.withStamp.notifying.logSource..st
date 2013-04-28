as yet unclassified
compile: aString classified: aSymbol withStamp: aChangeStamp notifying: anObject logSource: aBoolean
	"Before compiling the methods of the receiver make sure that the respective language boxes are added, this makes it possible to have the boxes and the tests in the same package."
	
	^ self
		securelyCompile: aString
		do: [ super compile: aString classified: aSymbol withStamp: aChangeStamp notifying: anObject logSource: aBoolean ]