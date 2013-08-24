#!/bin/bash

if [ $# != 1 ]
then
    echo "Usage: $0 <info-directory>"
    exit -1
fi

for info_file in $1/*.info
do
    install-info $info_file $1/dir
done
