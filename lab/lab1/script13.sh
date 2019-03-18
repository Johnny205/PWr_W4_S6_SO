#!/bin/bash
if [ $# -ne 1 ]
then
        echo "Wrong parameters quantity"
        echo "Użycie: $0 file_with_message"
        exit 1
fi

if [[ ! -e $1 ]]; then
        echo "There is no file $1!"
        exit 1
fi

mailList=`ls /var/spool/mail`

for receiver in $mailList
do
        cat $1 | mail
done