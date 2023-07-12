#!/usr/bin/env bash
# https://play.picoctf.org/practice/challenge/44

strings garden.jpg | grep -i pico | awk '{print $NF}' | tr -d '"'