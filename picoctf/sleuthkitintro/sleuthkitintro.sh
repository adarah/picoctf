#!/usr/bin/env bash

scriptdir=$(dirname "$0")
. "$scriptdir/../lib.sh"

function main() {
    diskImg=$(getDiskImage https://artifacts.picoctf.net/c/164/disk.img.gz)
    # 0000202752
    len=$(mmls "$diskImg" | grep "Linux" | awk '{print $5}')
    # forces number to be in base 10
    len=$((10#$len))
    echo $len | nc saturn.picoctf.net 52472 | grep 'picoCTF'
}

main