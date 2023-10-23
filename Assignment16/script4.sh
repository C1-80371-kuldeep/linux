#!/bin/bash

echo -n "Enter the number: "
read num

#for((i=2; i<=num/2; i++))
#do
 # if [ $((num%i)) -eq 0 ]
 # then
  #  echo "$num is not a prime number."
   # exit
 # fi
#done
fac=`factor $num|wc -w`
if [ $fac -eq 2 ]
then
	echo "$num is a prime number."
else
	echo "$num is not a prime number"
fi
