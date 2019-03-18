#!/bin/bash

depth=3

if [ $# -ne 1 ]
then
        echo "Wrong parameters quantity"
        echo "How to use: $0 directory"
        exit 1
fi

if [ ! -d $1 ]
then
        echo "$1 is not directory!"
        exit 1
fi

function showContent
{
        content=`ls $1`
        for file in $content
        do
                if [ -d $1/$file ]
                then
                        if [[ $depth -gt 0 ]]
                        then
                                let depth=depth-1
                                echo "$1/$file"
                                showContent $1/$file
                                let depth=depth+1
                        fi
                else
                        echo "$1/$file"
                fi
        done
}

showContent $1