#!/usr/bin/env bash

cp Flag.pdf flag.sh
chmod +x flag.sh
./flag.sh
rm flag.sh

ar -x flag

mv flag flag2
cat flag2 | cpio -idmv
rm flag2

bzip2 -d flag

mv flag.out flag.gz
gzip -d flag.gz

lzip -d flag

mv flag.out flag.lz4
lz4 -d flag.lz4
rm flag.lz4

mv flag flag.lzma
lzma -d flag.lzma

mv flag flag.lzop
lzop -d flag.lzop
rm flag.lzop

lzip -d flag

mv flag.out flag.xz
xz -d flag.xz

cat flag | python filetypes.py
rm flag