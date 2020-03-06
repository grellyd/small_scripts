#!/bin/bash
left=DP1-8
right=DP1-1
laptop=eDP1
i3-msg workspace "1: cmd"
i3-msg move workspace to output $right
i3-msg workspace 2
i3-msg move workspace to output $laptop
i3-msg workspace 3
i3-msg move workspace to output $left
i3-msg workspace 4
i3-msg move workspace to output $left
i3-msg workspace 5
i3-msg move workspace to output $right
i3-msg workspace "6: msgr"
i3-msg move workspace to output $right
i3-msg workspace "7: cal"
i3-msg move workspace to output $right
i3-msg workspace 8
i3-msg move workspace to output $right
i3-msg workspace 9
i3-msg move workspace to output $right
i3-msg workspace 10
i3-msg move workspace to output $laptop
