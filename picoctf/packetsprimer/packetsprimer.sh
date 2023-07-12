#!/usr/bin/env bash

tshark -r network-dump.flag.pcap -x -Y frame.number==4 | xxd -r | grep 'p i c o.*' --text -o | tr -d ' '
