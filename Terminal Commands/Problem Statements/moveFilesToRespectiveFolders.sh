#!/bin/bash

for file in `ls *.txt`
do
	folderName=`echo $file | awk -F. '{print $1}'`
	if [ -d $folderName ]
	then
		rm -R $folderName
		echo The folder $folderName already exits! Removed $folderName
	fi
	mkdir $folderName
	echo Directory $folderName is made
	mv $file $folderName
	echo Moved $file to $folderName
	echo
done
ls */
