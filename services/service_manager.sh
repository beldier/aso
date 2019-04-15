#!/bin/bash

if [ $# -ne 2 ] 
then
        echo "Use: $1 action $2 service_name" >&2
	echo "Must be 2 parameters" >&2
        exit
fi


systemctl $1 $2
