#!/bin/bash

echo "Enter the number: "
read num

if [ $num -gt 0 ]
then 
	echo "number is positive"
elif [ $num -lt 0 ]
then
	echo "number is negative"
else
	echo "number is invalid"
fi
