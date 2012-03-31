#!/bin/sh
exec xrandr --output VGA-0 --mode 1152x768 --left-of LVDS --mode 1360x768 &
exec ck-launch-session startxfce4
xsetroot -cursor_name left_ptr
setxkbmap us -variant colemak
xmonad
