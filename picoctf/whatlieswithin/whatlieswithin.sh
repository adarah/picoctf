#!/usr/bin/env bash

docker run --name steg --rm -d -v "$LOCAL_WORKSPACE_FOLDER/picoctf/whatlieswithin":/data dominicbreuker/stego-toolkit check_png.sh buildings.png
docker logs -f steg 2> /dev/null | grep 'pico' --line-buffered -m1 | sed -nEe 's/.*"(pico.*)"/\1/p'
docker stop steg