#!/bin/bash

#Usage: To serach a given pattern and list the file which contains pattern

echo "value of \$0 is $0"
echo "following are the file containing pattern $1 : \n "
grep -l -r "$1" * 

