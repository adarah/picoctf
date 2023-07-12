#!/usr/bin/env bash

scriptdir=$(dirname "$0")
. "$scriptdir/../lib.sh"


function main() {
    diskImg=$(getDiskImage https://mercury.picoctf.net/static/b369e0ba3b6ffd2be8164cd3c99c294b/dds2-alpine.flag.img.gz)
    # ifind -a -o 2048 "$diskImg"
    sudo mount "$diskImg" /mnt -o offset=$((512*2048))
    txt=$(sudo cat /mnt/root/down-at-the-bottom.txt)
    sudo umount /mnt
    #    _     _     _     _     _     _     _     _     _     _     _     _     _  
    #   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \ 
    #  ( p ) ( i ) ( c ) ( o ) ( C ) ( T ) ( F ) ( { ) ( f ) ( 0 ) ( r ) ( 3 ) ( n )
    #   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/ 
    #    _     _     _     _     _     _     _     _     _     _     _     _     _  
    #   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \ 
    #  ( s ) ( 1 ) ( c ) ( 4 ) ( t ) ( 0 ) ( r ) ( _ ) ( n ) ( 0 ) ( v ) ( 1 ) ( c )
    #   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/ 
    #    _     _     _     _     _     _     _     _     _     _     _  
    #   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \   / \ 
    #  ( 3 ) ( _ ) ( 0 ) ( b ) ( a ) ( 8 ) ( d ) ( 0 ) ( 2 ) ( d ) ( } )
    #   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/   \_/ 
    echo "$txt" | sed -nr 's/\( (.) \)/\1/gp' | tr -d ' ' | tr -d '\n'
    echo
}

main