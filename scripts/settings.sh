#!/bin/bash
case $(echo -e "󰤆 Shutdown\n󰦛 Reboot\n󰑓 Reload\n󰥻 Run/Kill Fcitx5" | wofi --cache-file=/dev/null --dmenu) in
    "󰤆 Shutdown") shutdown now ;;
    "󰦛 Reboot") reboot ;;
    "󰑓 Reload") ~/.scripts/reload.sh ;;
    "󰥻 Run/Kill Fcitx5") ~/.scripts/fcitx5.sh ;;
esac
