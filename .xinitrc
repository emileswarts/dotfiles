#!/bin/sh
$HOME/bin/wallpaper &
$HOME/bin/myxorg.sh &
xsetroot -cursor_name left_ptr
setxkbmap us -variant colemak
unclutter -root -idle 2 &  #kill inactive cursor
startxfce4
exec xmonad
