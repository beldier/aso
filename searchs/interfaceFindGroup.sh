group=$(zenity --entry \
--title="Buscar grupos" \
--text="Ingrese el nombre del grupo" \
--entry-text "Grupo")

output=$(./searchs/findGroup $group)

if [ -z "$output" ]
then 
	zenity --info \
	--text="No existe el grupo: $group"
else
	zenity --info \
	--text="Si existe el grupo: $group"
fi
