#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xsetroot -cursor_name left_ptr
setxkbmap -layout se
xrdb -merge ~/.Xresources
bash ~/.fehbg &
synclient TapButton1=0
synclient TapButton2=0
synclient TapButton3=0
pulseaudio --start
exec xmonad
