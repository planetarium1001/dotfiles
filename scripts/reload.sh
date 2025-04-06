#!/bin/bash
hyprctl reload
killall waybar
waybar
killall mako
mako

