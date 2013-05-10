#/bin/bash

if [[ $# -ne 1 ]]; then
	ls Helvetia.app/Contents/MacOS/Squeak\ VM\ Opt  Helvetia.app/Contents/Resources/*.image
	exit
fi

Helvetia.app/Contents/MacOS/Squeak\ VM\ Opt  Helvetia.app/Contents/Resources/$1.image

