#!/bin/bash
if [ $# -ne 1 ]
then
        echo "Wrong parameters quantity "
        echo "How to use: $0 directory"
        exit 1
fi

existcounter=0
counter=0
for file in $(find $1  -type l); do  
    if [[ -L "$file" && -f "$file" ]] 
    then            
        let existcounter=existcounter+1
    else if [[ -L "$file" && -d "$file" ]]
    then
        let existcounter=existcounter+1
    fi
    fi
    let counter=counter+1
done;
echo "dowiazania symboliczne: $counter"
echo "dowiazania symboliczne do istniejacych katalogow/plikow: $existcounter"