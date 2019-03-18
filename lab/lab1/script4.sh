#!/bin/bash
if [ $# -ne 1 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 directory"
        exit 1
fi

if [ -d $1 ]
then
        currentDirectory=`pwd`
        cd $1
        counter=1
        content=`ls -S -r`
        for file in $content
        do
                if [ -d $file ]
                then
                        continue
                else
                        mv $file $file.$counter
                        let content=content+1
                fi
        done
        cd $currentDirectory
else
        echo "$1 is not directory!"
        exit 1
fi