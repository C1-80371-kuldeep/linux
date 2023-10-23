#!/bin/bash
echo "Enter the number of lines to print:"
read n
for ((i=0,j=0;i<$n,j<$n;i++,j++))
do
	echo -n "*"
	echo -e "\n"
done
