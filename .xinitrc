#!/bin/sh
exec xrandr --output VGA-0 --mode 1280x720 --left-of LVDS --mode 1360x768 &
exec ck-launch-session startxfce4
xsetroot -cursor_name left_ptr
setxkbmap us -variant colemak
xmodmap -e 'clear lock'
xmodmap -e 'keycode 0x42=Escape'
unclutter -root -idle 2 &  #kill inactive cursor
exec xmonad
