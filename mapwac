#!/bin/bash

# Simple shell script to automatically map
# a graphic tablet to a specific monitor in 
# mutimonitor setup

# TODO
# Check if NAME and ID are the same lenght
# Check if selected device is in range

NAME=$(xinput --list --name-only)
ID=$(xinput --list --id-only)
SCR=$(xrandr | grep " connected " | grep -Eo '^[^ ]+')

# generate id array
for word in $ID; do
	#echo $word
	id_arr+=( $word ) 
done


# generate scr array
for word in $SCR; do
	#echo $word
	scr_arr+=( $word ) 
done

# loop trough every line in INPUT_NAME and find wacom devices
IFS=$(printf '\n.')       # make newlines the only separator
set -f          # disable globbing
i=0
echo "Devices:"
for line in  $NAME; do
	# echo "$line"
	if [[ $line =~ "Wacom" ]]; then
  		echo "   $line [id=${id_arr[i]}]"
		dev+=( ${id_arr[i]})
	fi
	(( i=i +1 ))
done

# ask which monitor to select
echo "Select a monitor"
for i in ${!scr_arr[@]}; do
	echo "   $i) ${scr_arr[i]}"
done
read a 
for d in ${dev[@]}; do
	xinput map-to-output $d ${scr_arr[a]}
done

