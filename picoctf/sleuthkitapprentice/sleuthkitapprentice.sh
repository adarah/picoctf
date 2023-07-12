#!/usr/bin/env bash

scriptdir=$(dirname "$0")
. "$scriptdir/../lib.sh"

function main() {
    diskImg=$(getDiskImage https://artifacts.picoctf.net/c/136/disk.flag.img.gz)
    sudo mount "$diskImg" /mnt -o offset=$((512*360448))
    sudo cat /mnt/root/my_folder/flag.uni.txt
    sudo umount /mnt
}

main