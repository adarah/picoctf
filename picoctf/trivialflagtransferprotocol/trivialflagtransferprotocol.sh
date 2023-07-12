#!/usr/bin/env bash

if [ ! -f tftp.pcapng ]; then
    wget https://mercury.picoctf.net/static/88553d672efbccbc5868002f4c6eb737/tftp.pcapng
fi

# Files extracted manually, see README.md

if  [ ! -d extracted ]; then
    mkdir extracted
fi

ar -x files/program.deb --output extracted
