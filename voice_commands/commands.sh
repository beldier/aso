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
	"nombre de usuario")
		msg=$(hostname)
		zenity --info \
		--text="Nombre de usuario: "$msg \
		--width=200 \
		--height=75 \
	;;
	"direccion privada")
		msg=$(hostname -I)
		zenity --info \
                --text="Ip privada: "$msg \
                --width=200 \
                --height=75 \
	;;
	"sistema operativo")
		msg=$(hostnamectl | grep "Operating System:" | cut -d: -f2 | sed 's/ //g')
		zenity --info \
                --text='Sistema operativo:\n'$msg \
                --width=200 \
                --height=75 \
	;;
	"hora")
		msg=$(timedatectl | grep "Local time" | tr -s " "| cut -d' ' -f 6)
		zenity --info \
                --text='Hora actual:'$msg \
                --width=200 \
                --height=75 \
	;;
	"fecha")
		msg=$(timedatectl | grep "Local time" | tr -s " "| cut -d' ' -f 5)
		zenity --info \
                --text='Fecha actual:'$msg \
                --width=200 \
                --height=75 \
	;;

	"notas")
		gedit > /dev/null &
	;;
	"arquitectura")
		msg=$(hostnamectl | grep "Architecture:" | cut -d: -f2 | sed 's/ //g')
		zenity --info \
                --text='Arquitectura:\n'$msg \
                --width=200 \
                --height=75 \
	;;
	"configuracion")
		gnome-control-center
	;;
	"calculadora")
		gnome-calculator > /dev/null &
	;;
	"repositorio")
		firefox https://github.com/lurianne/aso
	;;

	*)
		zenity --info \
                --text='Error en el mensaje,palabra:'$word\
                --width=200 \
                --height=75 \

	;;
esac
