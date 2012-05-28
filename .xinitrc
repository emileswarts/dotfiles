#!/bin/sh
$HOME/bin/wallpaper &
$HOME/bin/myxorg.sh &
xsetroot -cursor_name left_ptr
setxkbmap us -variant colemak
xmodmap -e 'clear lock'
xmodmap -e 'keycode 0x42=Escape'
unclutter -root -idle 2 &  #kill inactive cursor
exec xmonad
