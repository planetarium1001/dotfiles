#!/usr/bin/bash
chmod +x ./archiso/*

cat ./settings.sh > tmp.sh && cat ./archiso/reflector.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./archiso/time.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./archiso/pacman.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./archiso/partition_sda.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
cat ./settings.sh > tmp.sh && cat ./archiso/pacstrap.sh >> tmp.sh && chmod +x tmp.sh && ./tmp.sh
