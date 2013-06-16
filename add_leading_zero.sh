#!/bin/bash

for file in $*
do
    mv $file `printf %03d ${file%.*}`.${file##*.}
done
