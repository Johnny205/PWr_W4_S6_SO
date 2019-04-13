#!/bin/bash
if [ $# -ne 2 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 source_directory $1 target_directory"
        exit 1
fi

curentdirectory=`pwd`
target_directory=$1
source_directory=$2
for file in * 
do
    echo "$file"
    if [ ! -L "$file" ] 
    then
        if [ -f "$file" ]
        then
            ln "$target_directory/$file" "$source_directory/$file"
        fi
    fi
done

cd $curentdirectory