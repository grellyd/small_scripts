#!/bin/bash

brightness_path="/sys/class/backlight/intel_backlight/brightness"

if [ -n "$1" ]
then
    echo $1 > $brightness_path
else
    echo $(cat $brightness_path)
fi
