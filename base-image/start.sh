#/bin/bash

if [[ $# -ne 1 ]]; then
	echo "=== Pass one of the following images as argument ==="
	ls Helvetia.app/Contents/Resources/*.image | xargs -n1 basename | sed -e "s/.image//g" | sort
	exit
fi

Helvetia.app/Contents/MacOS/Squeak\ VM\ Opt  Helvetia.app/Contents/Resources/$1.image

