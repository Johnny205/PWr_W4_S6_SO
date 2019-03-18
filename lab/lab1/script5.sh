#!/bin/bash
if [ $# -ne 2 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 directory extension"
        exit 1
fi

if [ -d $1 ]
then
        currentDirectory=`pwd`
        cd $1
        for file in *.$2
        do
                if [ -d $file ]
                then
                        continue
                else
                        echo "file $file:" >> $2
                        cat $file >> $2
                fi
        done
        cd $currentDirectory
else
        echo "$1 is not directory!"
        exit 1
fi