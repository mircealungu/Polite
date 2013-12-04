accessing
read contents from the disk
	| file |
	file := FileStream, read only file named: '/Users/mircealungu/Dropbox/Apps/PomodoroBox/box.txt'.
	contents := file, contents.