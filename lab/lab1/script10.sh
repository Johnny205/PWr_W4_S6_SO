#!/bin/bash
if [ $# -ne 2 ]
then
         echo "Wrong parameters quantity"
        echo "How to use: $0 source_directory destination_directory"
        exit 1
fi

if [[ ! -d $1 ]]; then
        echo "$1 is not directory!"
        exit 1
fi

if [[ ! -d $2 ]]; then
        echo "$2 is not directory!"
        exit 1
fi

fileList1=`ls $1`
fileList2=`ls $2`

for file1 in $fileList1
do
        for file2 in $fileList2
        do
                if [[ ! -d $1/$file1 ]] && [[ ! -d $2/$file2 ]]
                then
                        diff $1/$file1 $2/$file2 > /dev/null
                        if [[ $? -eq 0 ]] && [[ $file1 = $file2 ]]
                        then
                                echo "File $file1 has same content in both of directories."
                        fi
                fi
        done
done