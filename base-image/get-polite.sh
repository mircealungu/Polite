#/bin/sh

curl -LOk http://hudson.lukas-renggli.ch/job/Helvetia/lastSuccessfulBuild/artifact/Helvetia-OneClick.zip
unzip Helvetia-OneClick.zip
rm -rf Helvetia-OneClick.zip
mv Helvetia.app Polite.app
mv Polite.app/Contents/Resources/Helvetia.image Polite.app/Contents/Resources/Polite.image
mv Polite.app/Contents/Resources/Helvetia.changes Polite.app/Contents/Resources/Polite.changes
cp ../materials/PoliteBowB.icns Polite.app/Contents/Resources/Squeak.icns

cat Polite.app/Contents/Info.plist | sed s/Helvetia/Polite/g > tmp.plist
mv tmp.plist Polite.app/Contents/Info.plist

(cd ..; ln -s ./base-image/Polite.app/Contents/Resources/ default-path)


if [[ `uname -s` == "Linux" ]] 
then
	echo "Linux detected..."
	./Polite.app/Contents/Linux/squeak ./Polite.app/Contents/Resources/Polite.image `pwd`/prepareImage.st 
elif [[ `uname -s` == *NT* ]] 
then
	echo "Windows detected..."
	./Polite.app/Contents/Windows/Squeak.exe ./Polite.app/Contents/Resources/Polite.image `pwd`/prepareImage.st
else
	echo "OS X detected..."
	./Polite.app/Contents/MacOS/Squeak\ VM\ Opt ./Polite.app/Contents/Resources/Polite.image `pwd`/prepareImage.st 
fi

