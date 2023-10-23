#!/bin/bash

echo "1. Uppercase to Lowercase "
echo "2. Lowercase to Uppercase"
echo "3. Exit"
echo -n "Enter your Choice(1-3):"
read ch

echo "Enter the word :"
read word

case $ch in
	1) echo "Uppercase to Lowercase :"
	#tr '[A-Z]' '[a-z]' <$word
	echo "$word" | tr '[:upper:]' '[:lower:]'
	;;
	2) echo "lowercase to uppercase :"
	#tr '[a-z]' '[A-Z]' <$word
	echo "$word" | tr '[:lower:]' '[:upper:]'
	;;
	*) echo "Exiting..."
	exit
	;;
esac
