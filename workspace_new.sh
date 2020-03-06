#!/bin/bash
xrandr --output eDP1 --auto --right-of DP1-1 --nograb --scale 0.9x0.9
xrandr --output DP1-1 --mode 2560x1440 --left-of eDP1 --nograb --scale 1.0x1.0
xrandr --output DP1-8 --mode 2560x1440 --left-of DP1-1 --nograb --scale 1.0x1.0
