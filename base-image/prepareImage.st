Gofer new
      url: 'http://ss3.gemstone.com/ss/FileTree';
      package: 'ConfigurationOfFileTree';
      load.
((Smalltalk at: #ConfigurationOfFileTree) project version: #'stable') load.

OBCodeBrowser  mercuryPanelEnabled: true.


Gofer new
	repository: (MCFileTreeRepository new directory: (FileDirectory on: FileDirectory default containingDirectory containingDirectory containingDirectory containingDirectory pathName, '/src'));
	package: 'PoliteSmalltalk';
	load
