#!/bin/bash

# the pile version 0.1
# 02/27/2014

CURRENT_DIR=$(pwd)
FILES=$("find $CURRENT_DIR")

for X in $FILES
do
	echo "$X"
done
