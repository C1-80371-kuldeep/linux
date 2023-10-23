#!/bin/bash

echo "SELECT YOUR OPTION";
echo "1. Date"
echo "2. Cal"
echo "3. ls"
echo "4. pwd"
echo "5. Exit from menu "
echo -n "Enter your menu choice [1-5]: "

while :
do

read choice

case $choice in
	1)  echo "Today's date is"
		date;;
	2)  echo "Calendar of this month is"
		cal;;
	3) echo "Output of ls :"
		ls;;
	4) echo "Output of pwd :"
		pwd;;
	5) echo "Exiting..."
		exit;;
	*) echo "invalid option";;
  
esac
  echo -n "Enter your menu choice [1-5]: "
done
