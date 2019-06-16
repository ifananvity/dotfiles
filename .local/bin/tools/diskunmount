#!/bin/sh
# A simple shell script to unmount and power off any removable media
# Pass the name of the device (e.g sdb) as an argument when running the script

for loc in $(sed -n "s/\\s.*//g; /$1/p" /proc/mounts); do
    udisksctl unmount -b "$loc" && sleep 1
done && udisksctl power-off -b /dev/"$1"
