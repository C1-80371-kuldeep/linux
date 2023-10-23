#!/bin/bash


echo "Enter the number for Fibonacci series: "
read num

a=0
b=1
echo "The fibonacci Series is "

for (( i=0; i<num; i++ ))
do
	echo -ne "$a\t"
	c=$((a + b))
	a=$b
	b=$c
done
