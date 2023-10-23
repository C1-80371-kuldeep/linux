#!/bin/bash
ls
for entry in $(ls)
do
if [ -x $entry ]
then
echo "$entry"
fi
done
