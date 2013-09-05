#/bin/sh

wget http://hudson.lukas-renggli.ch/job/Helvetia/lastSuccessfulBuild/artifact/Helvetia-OneClick.zip
unzip Helvetia-OneClick.zip
rm -rf Helvetia-OneClick.zip

if [[ `uname -s` == "Linux" ]]; then
	echo "Linux detected..."
	./Helvetia.app/Contents/Linux/squeak ./Helvetia.app/Contents/Resources/Helvetia.image `pwd`/prepareImage.st 
else
	echo "OS X detected..."
	./Helvetia.app/Contents/MacOS/Squeak\ VM\ Opt ./Helvetia.app/Contents/Resources/Helvetia.image `pwd`/prepareImage.st 
fi

