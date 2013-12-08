#/bin/sh

wget http://hudson.lukas-renggli.ch/job/Helvetia/lastSuccessfulBuild/artifact/Helvetia-OneClick.zip
unzip Helvetia-OneClick.zip
rm -rf Helvetia-OneClick.zip
mv Helvetia.app Polite.app
cp ../materials/PoliteBowB.icns Polite.app/Contents/Resources/Squeak.icns

if [[ `uname -s` == "Linux" ]]; then
	echo "Linux detected..."
	./Polite.app/Contents/Linux/squeak ./Polite.app/Contents/Resources/Helvetia.image `pwd`/prepareImage.st 
else
	echo "OS X detected..."
	./Polite.app/Contents/MacOS/Squeak\ VM\ Opt ./Polite.app/Contents/Resources/Helvetia.image `pwd`/prepareImage.st 
fi

