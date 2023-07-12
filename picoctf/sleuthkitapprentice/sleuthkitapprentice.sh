#!/usr/bin/env bash

function getDiskImage() {
    if [ -f "disk.flag.img" ]; then
        return
    fi 

    downloadDiskImage
    gzip -d disk.flag.img.gz
}

function downloadDiskImage() {
    if [ -f "disk.flag.img.gz" ]; then
        return
    fi

    wget https://artifacts.picoctf.net/c/136/disk.flag.img.gz
}

function main() {
    getDiskImage
    sudo mount disk.flag.img /mnt -o offset=$((512*360448))
    sudo cat /mnt/root/my_folder/flag.uni.txt
    sudo umount /mnt
}

main