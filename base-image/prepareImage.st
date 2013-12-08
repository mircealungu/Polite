|form|

World color: Color white. 
World submorphs do: [ :each | 
        (#(SketchMorph ImageMorph) includes: each class name) 
                ifTrue: [ each delete ] ]. 

World backgroundMorph: nil.
World restoreDisplay.

form := (Form fromBinaryStream: (HTTPSocket httpGet:             
     'http://1.bp.blogspot.com/-pNp6mPeRHok/UAdE5PBq5KI/AAAAAAAAALw/JU0AKoUcmH8/s1600/' , 'polite-bow.jpg')).
World backgroundImage: form layout: #left.

Gofer new
      url: 'http://ss3.gemstone.com/ss/FileTree';
      package: 'ConfigurationOfFileTree';
      load.
((Smalltalk at: #ConfigurationOfFileTree) project version: #'stable') load.

OBCodeBrowser  mercuryPanelEnabled: true.


Gofer new
	repository: (MCFileTreeRepository new directory: (FileDirectory on: FileDirectory default containingDirectory containingDirectory containingDirectory containingDirectory pathName, '/src'));
	package: 'PoliteSmalltalk';
	load.

PSGrammarTests browse
