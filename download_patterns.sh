#!/bin/bash
if [ $# != 2 ]
then
    echo "usage: $0 <pattern_file> <file>"
    exit 1
fi

grep -f $1 -o $2 | download_images.rb
