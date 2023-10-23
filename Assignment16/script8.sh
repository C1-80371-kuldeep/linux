#!/bin/bash


echo "enter the number: "
read num

i=1 
while [ $i -le 10 ] 
do 
echo "$num x $i = `expr $num \* $i`" 
i=`expr $i + 1` 
done 
