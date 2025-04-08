#!/usr/bin/bash
chmod +x ./user/*
chmod +x ./settings.sh
./settings.sh

cat ./settings.sh > tmp.sh && cat ./user/home.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./user/dotfiles.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./user/packages.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
