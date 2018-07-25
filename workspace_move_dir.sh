#!/bin/bash
if [ -z "$1" ]
then
    direction="left"
else
    direction=$1
fi

i3-msg move workspace to output $direction
