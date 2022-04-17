#!/bin/bash 
#usage: check if httpdserver is installed and running , if not install it.

export status_var=` systemctl status apache2 | grep 'Active: active (running)' | wc -l`

if [ "$status_var" == "1" ]; then 
	echo " apache2 is installed on this system "

elif [ "$status_var" == "0" ]; then 
       echo " apache2 is NOT installed on this system" 
       echo "installing apache2"
       sudo apt-get install apache2 -y 
       
fi
#Check the port 80 , if not open , open it.

export port_status=`lsof -i -P -n | grep LISTEN | grep 80 | wc -l`

if [ "$port_status" != "0" ]; then 
	echo " port 80 is opened "
else 
	echo " port 80 is closed "

fi



