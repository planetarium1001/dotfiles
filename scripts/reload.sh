#!/bin/bash
hyprctl reload
if pgrep -x "waybar" > /dev/null; then
    kill $(pidof waybar)
    waybar
else
    waybar
fi
if pgrep -x "mako" > /dev/null; then
    kill $(pidof mako)
    mako
else
    mako
fi
if pgrep -x "ydotoold" > /dev/null; then
    kill $(pidof ydotoold)
    ydotoold
else
    ydotoold
fi

