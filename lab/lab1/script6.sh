#!/bin/bash
if [ $# -ne 1 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 file_with_list"
        exit 1
fi

if [ ! -f $1 ]
then

        echo "There is no file $1!"
        exit 1
fi

content=`cat $1`
rm $1 -f
for file in $content
do
        if [[ -f $file ]]
        then
                echo "file $file:" >> $1
                cat $file >> $1
        fi
done