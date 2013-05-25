private
read contents from the disk
	| file |
	file := File Stream, read only file named: '/Users/mircea/Dropbox/logs/pomodoros.txt'.
	contents := file, contents.