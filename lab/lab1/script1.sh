#!/bin/bash
rm *.old -f
for fileName in *
do
        if [ -w $fileName ]
        then
                mv $fileName $fileName.old
        fi
done