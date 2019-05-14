
zenity --info \
--text="Presione OK y pronuncie su comando"

rec -r 16k -c 2 audio_file.flac trim 0 2

#apikey linked to my account
text=$(curl -X POST -u "apikey:vVIJzGFAoWbSAnBNLiIPROwc5ikxPbxopg0MnSTkRgjQ" \
	--header "Content-Type: audio/flac" --data-binary @./audio_file.flac  \
	"https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?model=es-ES_BroadbandModel")

echo $text

value=$(grep -oP '(?<="transcript": ")[^"]*' $text)

echo $value
