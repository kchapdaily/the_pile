#!/bin/bash

# the pile.sh
# aggregate all TODO's in a directory.
#  -currently only works for one (current) dir
#  -currently only works for "TODO's" commented with a 1 character comment

#TODO: only match TODO's that start with a(ny) comment
#TODO: print filename before group of TODO's from that file
#TODO: come up with a way to handle TODO's that span more than one line

FILES=(*)

for X in "${FILES[@]}"
do
	#TODO: Count actual todo items, if there are none, do not print filename
	#-loop through, count todos
	#-display number of todo items with filename
	
	#TODO: consider priority system
	echo "`pwd`/$X" >> .output
	sed -n "s/^.\(TODO:.*$\)/  \1/p" "$X" >> .output
	#TODO: color formatting of output. might have to format later
done

cat .output
rm .output
