#!/bin/bash
list=$(nmap -sn 192.168.43.0/24 | awk  '/Nmap scan report for/{printf $5;}\
/MAC Address:/{print " "substr($0, index($0,$3)) }')
IFS=$'\n'
lines=""
NEWLINE=$'\n'

for us in $list
do
	ip=$(echo "$us" | cut -d " " -f1)
	mac=$(echo "$us" | cut -d " " -f2)
	name=$(echo "$us" | cut -d " " -f3)
	if [[ $mac == $ip ]]; then
		mac="current machine"
		name="current machine"
	fi
	lines+="$ip$NEWLINE$mac$NEWLINE$name$NEWLINE"
done

zenity --list \
	  --text="This is a list of all current devices within the network" \
	  --title="List of current devices in the network" \
	  --column="ip" --column="mac adress" --column="name(possible)" \
	  --width=800 \
	  --height=800 \
	    $lines


