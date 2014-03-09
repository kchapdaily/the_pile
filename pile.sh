#!/bin/bash

# the pile version 0.0
# aggregate all TODO's in a directory.
#  -currently only works for one (current) dir, this will be expanded
#  -currently only works for TODO's commented with a 1 character comment

#TODO: only match TODO's that start with a(ny) comment
#TODO: print filename before group of TODO's from that file
#TODO: come up with a way to handle TODO's that span more than one line
#TODO: think about adding a script to check for necessary tools


FILES=(*)

for X in "${FILES[@]}"
do
	echo "`pwd`/$X" >> .output
	sed -n "s/^.\(TODO:.*$\)/  \1/p" "$X" >> .output
	#TODO: color formatting of output. might have to format later
done

cat .output
rm .output
