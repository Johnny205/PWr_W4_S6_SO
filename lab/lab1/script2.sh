#!/bin/bash
if [ $# -ne 2 ]
then
        echo "Wrong parameters quantity "
        echo "How to use: $0 directory file_with_list_of_names"
        exit 1
fi

if [ -d $1 ]
then
        if [ -f $2 ]
        then
                pliki=`cat $2`
        else
                echo "There is no file: $2!"
                exit 1
        fi
else
        echo "$1 is not a directory!"
        exit 1
fi

for fileName in $fileNames
do
        if [ ! -e $fileName ]
        then
                touch $1/$fileName
        fi
done