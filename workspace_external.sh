#!/bin/bash
xrandr --output HDMI1 --auto --left-of eDP1 --nograb --scale 1.0x1.0
xrandr --output eDP1 --auto --right-of HDMI1 --nograb --scale 0.7x0.7
