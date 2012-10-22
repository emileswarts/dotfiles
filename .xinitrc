#!/bin/sh
setxkbmap us -variant colemak
xmodmap -e 'clear lock'
xmodmap -e 'keycode 0x42=Escape'
