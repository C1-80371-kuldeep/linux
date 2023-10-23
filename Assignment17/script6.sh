#!/bin/bash
echo "Enter the number of rows:"
read nrows
rowcount=1
for ((i=$nrows;i>0;i--))
do 
for ((j=1;j<=`expr $i \* 2`;j++))
do
echo -n " "
done
for ((j=1;j<=$rowcount;j++))
do
echo -n "$j "
done
for ((j=`expr $rowcount - 1`;j>=1;j--))
do
echo -n "$j "
done
echo ""
rowcount=`expr $rowcount \+ 1`
done
