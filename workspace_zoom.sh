#!/bin/bash
echo "in: $MONITOR"
if [ -z $MONITOR ]
then
    scale="1.0x1.0"
    change="--off"
    export MONITOR=false
else
    scale="0.6x0.6"
    change="--auto --left-of eDP1 --nograb"
    export MONITOR=true
fi

xrandr --output HDMI1 $change 
xrandr --output eDP1 --scale $scale
echo "out: $MONITOR"
