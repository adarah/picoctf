#!/usr/bin/env bash

function getDiskImage() {
    if [ -f "disk.img" ]; then
        return
    fi 

    downloadDiskImage
    gzip -d disk.img.gz
}

function downloadDiskImage() {
    if [ -f "disk.img.gz" ]; then
        return
    fi

    wget https://artifacts.picoctf.net/c/164/disk.img.gz
}

function main() {
    getDiskImage
    # 0000202752
    len=$(mmls disk.img | grep "Linux" | awk '{print $5}')
    # forces number to be in base 10
    len=$((10#$len))
    echo $len | nc saturn.picoctf.net 52472 | grep 'picoCTF'
}

main