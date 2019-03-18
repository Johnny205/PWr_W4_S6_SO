#!/bin/bash

if [ $# -ne 2 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 directory destination_file"
        exit 1
fi

if [ ! -d $1 ]
then
        echo "$1 is not directory!"
        exit 1
fi

currentDirectory=`pwd`
cd $1
for file in *
do
        if [[ ! -s $file ]] && [[ -f $file ]] && [[ ! -L $file ]]
        then
                echo "$file deleted." >> $currentDirectory/$2
                rm $file -f
        fi
done

cd $currentDirectory