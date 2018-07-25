#! /bin/bash
if [ -z "$1" ]
then
    sort="cpu"
else
    sort=$1
fi

if [ -z "$2" ]
then
    numEntries=10
else
    numEntries=$2
fi
ps -Ao user,pid,%cpu,ni,%mem,start,time,comm --sort=-%$sort | head -n $numEntries
