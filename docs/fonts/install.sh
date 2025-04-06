#!/usr/bin/bash

echo "==> Install Main Fonts"
yay -S < ./package_main

echo "==> Install Extra Fonts"
yay -S < ./package_extra

echo "==> Configuration for LXGW Wenkai Mono Screen"
fc-cache -r
