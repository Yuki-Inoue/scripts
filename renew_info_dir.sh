#!/bin/bash

# usage: renew_dir.sh info_directory
#   installs dir file to the directory
#   where info files are allocated.

DIRPATH=$1/dir

if [ -f $DIRPATH ]
then
    rm $DIRPATH
fi

for infofile in $1/*.info
do
    install-info --quiet $infofile $DIRPATH
done
