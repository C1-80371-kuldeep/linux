#!/bin/bash


while true; do
read -e -p "Enter phone number: " number
[[ $number == 0* || $number == +91* || ${#number} == 10 && $number =~ [0-9]+$ ]] && echo "Valid" || echo "invalid"; 
break
done

