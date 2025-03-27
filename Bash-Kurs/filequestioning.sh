#!/bin/bash

if [ -d lol ]
then
	echo "the directory exists"
	if [ -f lol/abc.txt ]
	then
		echo "the file exists"
		read -p "should this file be deleted (Y/N): " deletion
			if [ $deletion = Y ]
			then
				rm lol/abc.txt
				echo "the file was deleted"
			else
				echo "the file wasn't deleted"
			fi
	else
		echo "the file doesn't exist"
		read -p "should this file be created (Y/N): " creation
			if [ $creation = Y ]
			then
				touch lol/abc.txt
				echo "the file was created"
	
			else
				echo "the file wasn't created"
			fi
	fi
else
	echo "the directory doesn't exist"
fi
