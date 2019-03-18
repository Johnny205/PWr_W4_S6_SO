#!/bin/bash
if [ $# -ne 2 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 source_directory file_with_list"
        exit 1
fi

if [[ ! -d $1 ]]; then
        echo "$1 is not directory!"
        exit 1
fi

if [[ ! -f $2 ]]; then
        echo "There is no file $2!"
        exit 1
fi

fileList1=`ls $1`
fileList2=`cat $2`

echo "Files that not exists in directory:"
for file1 in $fileList2
do
        found=0
        for file2 in $fileList1
        do
                if [[ $file1 = $file2 ]]
                        then
                        found=1
                fi
        done
        if [[ found -eq 0 ]]
        then
                echo $file1
        fi
done

echo "Files that not exists in list but exists in directory:"
for file1 in $fileList1
do
        found=0
        for file2 in $fileList2
        do
                if [[ $file1 = $file2 ]]
                        then
                        found=1
                fi
        done
        if [[ found -eq 0 ]]
        then
                echo $file1
        fi
done