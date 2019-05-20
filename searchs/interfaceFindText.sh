zenity --info \
	--text="Seleccione el archivo donde desea buscar texto"

file=`zenity --file-selection --title="Select a File"`

text=$(zenity --entry \
	--title="Buscador de texto" \
	--text="Ingrese la palabra o texto" \
	--entry-text "palabra")

output=$(./searchs/findText $text $file)
echo $output>./searchs/salida.txt
zenity --text-info \
       --title="Busqueda" \
       --filename=./searchs/salida.txt \
