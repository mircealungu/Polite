#/bin/bash

if [[ $# -ne 1 ]]; then
	echo "=== Pass one of the following images as argument ==="
	ls Polite.app/Contents/Resources/*.image | xargs -n1 basename | sed -e "s/.image//g" | sort
	exit
fi

Polite.app/Contents/MacOS/Squeak\ VM\ Opt  Polite.app/Contents/Resources/$1.image

