#!/bin/bash
if [ $# -ne 1 ]
then
        echo "Wrong parameters quantity "
        echo "How to use: $1 directory"
        exit 1
fi
echo $1
cd $1
for file in *
do
    if [ -L "$file" ]
    then
        if [[ "$(basename $(dirname $(readlink -f $file)))" != "$1"  && -f $file ]]
        then
            echo $file
            target=$(readlink -f $file)
            filename=$file
            rm -f $file
            ln $target $filename
        fi
    fi

done