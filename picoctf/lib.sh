#!/usr/bin/env bash

# To include these functions, add this to the top of the bash script
# scriptdir=$(dirname "$0")
# . "$scriptdir/../lib.sh"

function getDiskImage() {
    gz_name=$(basename "$1")
    name=$(basename "$gz_name" .gz)

    if [ -f "/tmp/$name" ]; then
        # File already downloaded and extracted
        echo "/tmp/$name"
        return
    fi

    if [ ! -f "/tmp/$gz_name" ]; then
        # File not downloaded yet, go get it
        wget "$1" -P /tmp
    fi

    # Extract while keeping original, force overwrite if it already exists
    gzip -fkd "/tmp/$gz_name"
    echo "/tmp/$name"
}


function caesar() {
    read -r line
    if [ ! -f "./session.json" ]; then
        https --follow --session=./session.json https://www.dcode.fr/caesar-cipher > /dev/null
    fi
    https --follow --form --ignore-stdin --session=./session.json POST www.dcode.fr/api/ \
        "tool=caesar-cipher" \
        "ciphertext=$line" \
        "bruteforce=true" \
        "accept:application/json, text/javascript, */*; q=0.01" \
        "content-type:application/x-www-form-urlencoded; charset=UTF-8" \
        referer:https://www.dcode.fr/caesar-cipher \
        "user-agent:Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36" \
        x-requested-with:XMLHttpRequest \
        | jq '.results|to_entries|first| .value' \
        | tr -d '"'
}