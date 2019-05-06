#!/bin/bash

if [ $# -ne 1 ] 
then
        echo "Uso: $1 url" >&2
	echo "Must be 1 parameters, url" >&2
        exit
fi
dir=/etc/hosts
echo "">>$dir
echo "127.0.0.1 www.$1">>$dir

echo "::1 www.$1">>$dir
echo "127.0.0.1 http://www.$1">>$dir

echo "::1 http://www.$1">>$dir
echo "127.0.0.1 $1">>$dir

echo "::1 $1">>$dir

