#!/usr/bin/env bash

scriptdir=$(dirname "$0")
. "$scriptdir/../lib.sh"

tshark -r shark1.pcapng -x -Y frame.number==827 | xxd -r | grep 'cvp.*' -o --text | caesar