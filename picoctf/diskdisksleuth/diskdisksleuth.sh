#!/usr/bin/env bash

scriptdir=$(dirname "$0")
. "$scriptdir/../lib.sh"

function main() {
    diskImg=$(getDiskImage https://mercury.picoctf.net/static/4f3df7052b4121aff89af1a3f517afb1/dds1-alpine.flag.img.gz)
    echo "$diskImg"
    srch_strings "$diskImg" | grep picoCTF | awk '{print $2}'
}

main