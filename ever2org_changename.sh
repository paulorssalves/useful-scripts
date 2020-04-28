#!/bin/bash

# made to manipulate the names of some files exported from
# evernote to org mode

for item in *.org ; do 
	base=$(basename "$item" '.org')
	mv $item $(echo $base | sed 's|\([0-9)]\{2\}\)\([0-9)]\{2\}\)\([0-9)]\{4\}\)-\([[:alnum:]]*\)|\1-\2-\3|').org
done 
