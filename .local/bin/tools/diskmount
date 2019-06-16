#!/bin/sh
# A simple shell script to mount all partitions of a device
# Pass the name of the device (e.g sdb) as an argument when running the script

for loc in $(lsblk -l /dev/"$1" | sed "s/\s.*//g; 1d; 2d"); do
    udisksctl mount -b /dev/"$loc"
done
