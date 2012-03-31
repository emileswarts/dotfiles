#!/bin/sh
exec xrandr --output VGA-0 --auto --left-of LVDS &
xsetroot -cursor_name left_ptr
setxkbmap us -variant colemak
xmonad
