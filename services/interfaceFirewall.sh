url=$(zenity --entry \
--title="Buscar archivo" \
--text="Ingrese el nombre del archivo" \
--entry-text "Archivo")

./services/firewall.sh $url
