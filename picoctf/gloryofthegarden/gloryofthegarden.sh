#!/usr/bin/env bash

strings garden.jpg | grep -i pico | awk '{print $NF}' | tr -d '"'