#!/usr/bin/env bash
# https://play.picoctf.org/practice/challenge/186
# sudo apt update && sudo apt install exiftool
exiftool cat.jpg | grep License | awk '{print $3}' | base64 -d