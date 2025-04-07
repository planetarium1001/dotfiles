#!/usr/bin/bash
echo -e "\e[31m==> Stop and disable reflector service\e[0m"
systemctl disable reflector.service
systemctl stop reflector.service
