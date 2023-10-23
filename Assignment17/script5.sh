#!/bin/bash
arr=(10 50 20 30 40)
max=${arr[0]}
min=${arr[0]}
for i in ${arr[*]}
do
if [ $i -gt $max ]
then
max=$i
fi
done

for i in ${arr[*]}
do
if [ $i -lt $min ]
then
min=$i
fi
done

echo "max = $max"
echo "min = $min"

