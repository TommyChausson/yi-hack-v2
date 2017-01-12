#!/bin/bash

while true;
do
	sleep 10

    if [[ ! `pidof -s ipc` ]]; then
        /home/web/ipc -w
    fi
    
   var=$(cat /sys/class/gpio/gpio46/value)
    if [ $var = 1 ]
    then
           reboot
    fi
   
    
done