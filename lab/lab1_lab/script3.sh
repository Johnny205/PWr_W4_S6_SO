#!/bin/bash
if [ $# -ne 2 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 source_directory destination_directory"
        exit 1
fi

if [[ -d $1 ]]&&[[ -d $2 ]]
then
        currentDirectory=`pwd`
        cd $1
        for file in *
        do
                if [ -d $file ]
                then
                        continue
                else
                        if [ -r $file ]
                        then
                                mv $file $currentDirectory/$2
                        fi
                fi
        done
        cd $currentDirectory
else
        echo "$1 or $2 is not directory!"
        exit 1
fi