#!/bin/bash
if [ $# -ne 1 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 directory"
        exit 1
fi

if [[ ! -d $1 ]]; then
        echo "There is no directory $1!"
        exit 1
fi

currentDirectory=`pwd`
cd $1
for file in *
do
        if [[ ! -d $file ]]
        then
                touch -m $file
        fi
done
cd $currentDirectory
