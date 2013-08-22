#!/bin/bash

latexmk -output-directory=${1%${1##*/}} -pdfdvi -latex='platex -shell-escape' ${1%.tex}
