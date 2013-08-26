#!/bin/bash

latexmk -output-directory=`dirname $1` -pdfdvi ${1%.tex}
