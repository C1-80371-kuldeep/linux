#!/bin/bash
if [ -e $1 ]
then 
	if [ -f $1 ]
	then
		stat -c "permission - %A, size - %s , owner - %U" $1
	else
		ls | wc -w
	fi
fi
