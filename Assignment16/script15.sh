#!/bin/bash
echo "Enter file1 and file2"
read f1 f2
rev $f1 >> $f2
cat $f2

