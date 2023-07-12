#!/usr/bin/env bash
exiftool cat.jpg | grep License | awk '{print $3}' | base64 -d