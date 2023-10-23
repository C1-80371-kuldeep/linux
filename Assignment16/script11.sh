#!/bin/bash

function fac {
  N=$1
  fact=1
  while [ $N -gt 1 ] ; do 
    fact="${fact}*${N}"
    ((N--))
  done
  echo $fact | bc
}

fac $1
