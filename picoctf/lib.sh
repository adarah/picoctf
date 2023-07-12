#!/usr/bin/env bash

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
