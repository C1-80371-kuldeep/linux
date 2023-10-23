#!/bin/bash


echo "Enter the year: "
read year

x=`expr $year % 4`
y=`expr $year % 100`
z=`expr $year % 400`
if [ $x -eq 0 -a $y -ne 0 -o $z -eq 0 ]
then 
echo "$year is leap year"
else
echo "$year is not a leap year"
fi
