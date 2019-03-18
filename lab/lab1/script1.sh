#!/bin/bash
rm *.old -f
for nazwa in *
do
        if [ -w $nazwa ]
        then
                mv $nazwa $nazwa.old
        fi
done