#!/bin/bash

if [ $# -ne 1 ] 
then
        echo "Uso: $1 word" >&2
	echo "Must be 1 parameters" >&2
        exit
fi

word=$1

case $word in
	"explorador")
		nautilus > /dev/null
	;;
	"navegador")
		firefox > /dev/null
	;;
	"silencio")
		pactl set-sink-mute 0 1
	;;
	"sonido")
		pactl set-sink-mute 0 0
	;;
	"terminal")
		gnome-terminal > /dev/null
	;;
	"apagar")
		shutdown 0
	;;
	"reiniciar")
		shutdown 0 -r
	;;
	"apagar red")
		nmcli networking off
	;;
	"prender red")
		nmcli networking on
	;;
	"lectura")
		evince
	;;
	*)
		echo "Recepcion fallida"
	;;
esac


