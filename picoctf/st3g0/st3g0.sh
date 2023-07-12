#!/usr/bin/env bash

docker run --name steg --rm -d -v "$LOCAL_WORKSPACE_FOLDER/picoctf/st3g0":/data dominicbreuker/stego-toolkit check_png.sh pico.flag.png
docker logs -f steg 2> /dev/null | grep 'picoCTF' --line-buffered -m1 | sed -nEe 's/.*"(pico.*)\$.*/\1/p'
docker stop steg