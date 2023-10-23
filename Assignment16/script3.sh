#!/bin/bash

echo "Enter the name: "
read ch

if [ -d "$ch" ] ; then
    echo "$ch is a directory";
    ls $ch
elif [ -f "$ch" ]; then
    echo "$ch is a file";
    stat -c "size = %s" $ch
    ls -sh $ch
else
    echo "$ch is not valid";
      exit 1
fi

