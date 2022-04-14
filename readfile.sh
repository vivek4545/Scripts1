#!/bin/bash 
#Usage: Read and display contents of file in current folder

#ls > demo.txt
for i in `ls`
do 
  echo "displaying contents of $i "
  cat $i
done
