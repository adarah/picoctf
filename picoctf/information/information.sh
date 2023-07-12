#!/usr/bin/env bash

sudo apt update && sudo apt install exiftool
exiftool cat.jpg | grep License | awk '{print $3}' | base64 -d