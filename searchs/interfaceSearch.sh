#!/bin/bash
zenity --list \
	  --title="Escoge la funcion que quieras usar" \
	  --width=600 \
	  --height=250 \
	  --column="Numero" --column="Funcion" --column="Descripcion" \
	    1 "Buscador de archvios" "Imprime la ruta en la cual este el archivo" \
	    2 "Buscador"  "Busqueda de texto en archivo,archivos, grupos usuarios" \
	    3 "Servicios" "Manejador de servicios,firewall, scanner de dispositivos" \
	    4 "Comandos por voz" "Reconocedor de comandos via voz " )

