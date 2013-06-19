#!/bin/bash

for file in $*
do
    cat $file | rm_tailing_whitespace_filter.sh > ${file}.tl_removed
    mv ${file}.tl_removed $file
done
