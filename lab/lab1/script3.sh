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
        for file in *
        do
                if [ -x $file ]
                then
                        continue
                else
                        rm $file -f
                fi
        done
        cd $currentDirectory
else
        echo "$1 is not directory!"
        exit 1
fi