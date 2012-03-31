#!/bin/sh
exec xrandr --output VGA-0 --mode 1024x768 --left-of LVDS --mode 1360x768 &
xsetroot -cursor_name left_ptr
setxkbmap us -variant colemak
xmonad
