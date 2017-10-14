#!/bin/bash

state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | awk '{print $2}')
source "vars.config" #file that has pathToBackup variable

if [[ $state == "dicharging" ]] 
then
	echo "On Battery, not running backups"
	exit
else
	echo "Running backups" 
	exec $pathToBackup
fi

