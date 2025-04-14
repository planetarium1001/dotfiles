#!/bin/bash
if pgrep -x "fcitx5" > /dev/null; then
    kill $(pidof fcitx5)
else
    fcitx5 -d
fi
