
zenity --info \
--text="Presione OK y pronuncie su comando" \
  --width=200 \
  --height=75 \


rec -r 16k -c 2 ./voice_commands/audio_file.flac trim 0 2 >/dev/null 2>/dev/null

#apikey linked to my account
text=$(curl -X POST -u "apikey:vVIJzGFAoWbSAnBNLiIPROwc5ikxPbxopg0MnSTkRgjQ" \
	--header "Content-Type: audio/flac" --data-binary @./voice_commands/audio_file.flac  \
	"https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?model=es-ES_BroadbandModel")

echo $text > ./voice_commands/temp
value=$(grep -oP '(?<="transcript": ")[^"]*' ./voice_commands/temp)

./voice_commands/commands.sh $value
