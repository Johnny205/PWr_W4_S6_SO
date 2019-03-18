#!/bin/bash
if [ $# -ne 1 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 directory"
        exit 1
fi

if [[ ! -d $1 ]]; then
        echo "$1 is not directory!"
        exit 1
fi

fileList=`ls $1`

for file in $fileList
do
        if [[ -d $file ]]
        then
                mv $1/$file/* $1
                rmdir $1/$file
        fi
done