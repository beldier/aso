#!/bin/bash
services=$(systemctl list-unit-files --type service)
#echo "$services"
lines=""
IFS=$'\n'
for f in $services
do
	service=$(echo "$f" | cut -d ' ' -f1)
	#status=$(echo "$f" | cut -d ' ' -f2)
	#echo $status
	if [[ $service == *".service"* ]]
	then
#		status=$(echo "$f" | cut -d$'\t' -f2)
		status=$(echo "$f" | awk '{print $NF}')
		lines+="$f"
		echo $service
		echo $status
		#echo $f
	fi
	#status=$(cut -d ' ' -f2 <<< "$f")
	#echo $service
done

