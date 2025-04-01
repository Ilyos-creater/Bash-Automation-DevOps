#!/bin/bash

for file in "$@"
do
[ -f $file ] && echo The files name is $file && cp $file $file".backup" && echo $file".backup was made"
done

#for abc in "Hello" "Universe" "planet"
#do
#	echo $abc
#done

#for ((i=3;i<30; i+=3))
#do
#	echo $i
#done
