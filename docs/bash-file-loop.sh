#!/bin/bash

FILES="./*"

for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  /bin/ls -l $f
done
