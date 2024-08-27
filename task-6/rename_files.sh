#!/bin/bash

read -p "enter the path of the directory: " path

if [[ -d $path ]]
	then
		for file in $path/*.txt
		do
			mv -- "$file" "$path/old_${file##*/}"
		done
else
	echo "$path is not a directory"
fi
