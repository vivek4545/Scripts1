#!/bin/bash 
#usage: check if httpdserver is installed and running 

export status_var=`sudo systemctl status apache2 | grep inactive | wc -l`

if [ "$status_var" == "0" ]; then 
	echo " apache2 is installed on this system "

elif [ "$status_var" == "1" ]; then 
       echo " apache2 is NOT installed on this system" 
       
else 
	echo " Not sure about apache2 . Please check it manually "
fi 
