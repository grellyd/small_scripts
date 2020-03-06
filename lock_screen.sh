#!/bin/bash
icon=$HOME/pictures/lockimage/lock.png
tmpbg=/tmp/screen.png
scrot /tmp/screen.png
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg"
