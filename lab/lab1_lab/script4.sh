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
counter=0
for plik in *
do
        if [[ -x $plik ]]&&[[ -f $plik ]]
        then
                let counter=counter+1
                echo $plik
        fi
done
cd $currentDirectory
echo "FIles with execute rights in given directory: $counter."