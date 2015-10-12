#!/bin/bash
#batteryLife.sh
#author: Konrad "Ironus" Zierek
#contact: ironustlbb@gmail.com

#referential value used for checking battery status (charging or not). Do NOT change that value if you don't know what you're doing
PREVIOUS=100

while true; do
  #grepping battery information from acpi
	BATTERY=`acpi -V | grep "Battery 0:" | grep -v "design" | awk '{print $4}'`
	#getting numerical value
	BATTERY=${BATTERY::-2}

  #checking conditions
	if [[ $BATTERY -gt $PREVIOUS && $BATTERY -ge 80 ]]; then
	  #showing notification
		`notify-send -i /usr/share/icons/gnome/32x32/status/battery-full-charged.png "Plug off your charger! Battery level is $BATTERY%"`
		#playing sound
		`: $(pacmd play-file /usr/share/sounds/ubuntu/stereo/dialog-question.ogg 1)`
	#checking conditions
	elif [[ $BATTERY -lt $PREVIOUS && $BATTERY -le 40 ]]; then
	  #showing notification
		`notify-send -i /usr/share/icons/gnome/32x32/status/battery-empty.png "Plug in your charger! Battery level is $BATTERY%"`
		#playing sound
		`: $(pacmd play-file /usr/share/sounds/ubuntu/stereo/dialog-question.ogg 1)`
	fi
	#reassigning previous variable. Do NOT change that line
	PREVIOUS=$BATTERY

  #sleep time. You might want to change that to different value
	sleep 150
done

exit 0;
