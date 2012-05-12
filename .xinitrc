#!/bin/sh
xsetroot -cursor_name left_ptr
setxkbmap us -variant colemak
xmonad
xmodmap -e 'clear lock'
xmodmap -e 'keycode 0x42=Escape'
