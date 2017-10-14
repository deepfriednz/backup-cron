#!/bin/bash

state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | awk '{print $2}')

if [[ $state == "dicharging" ]] 
then
	exit
else
	#path to backup script
fi

