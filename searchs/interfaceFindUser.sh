usuario=$(zenity --entry \
--title="Buscar usuarios" \
--text="Ingrese el nombre del usuario" \
--entry-text "Usuario:")

output=$(./searchs/findUser $usuario)

if [ -z "$output" ]
then 
	zenity --info \
	--text="No existe el usuario: $usuario"
else
	zenity --info \
	--text="Si existe, pertence al grupo: $output"
fi
