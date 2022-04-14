#!/bin/bash 
#Usage: Read and display contents of file in current folder

ls > demo.txt
for i in `cat demo.txt`
do 
  echo "displaying contents of $i "
  cat $i
done
