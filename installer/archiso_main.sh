#!/usr/bin/bash
chmod +x ./archiso/*

./archiso/reflector.sh
./archiso/time.sh
./archiso/pacman.sh
./archiso/partition.sh
./archiso/pacstrap.sh
