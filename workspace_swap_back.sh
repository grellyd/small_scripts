#!/bin/bash
xrandr --output eDP1 --auto --right-of HDMI1 --nograb
xrandr --output eDP1 --scale 1.0x1.0
xrandr --output HDMI1 --off
