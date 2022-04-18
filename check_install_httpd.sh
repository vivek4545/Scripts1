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

#export port_status=`lsof -i -P -n | grep LISTEN | grep 80 | wc -l`
export port_status=`ufw status | grep 80 | awk '{print $2}' | head -1`

if [ "$port_status" != "ALLOW" ]; then 
	echo " port 80 is s already opened "
else 
	echo " port 80 is closed "
	sudo ufw allow 80
	#sudo ufw reload

fi



