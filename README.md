
 #TECOX
Is a program written in bash with some sort of functions like voice commands recognition, network scanning, and others.
This was made for the course Operatives Systems Application as a project for semester 1/2019. [Umss] Cochabamba - Bolivia
**NOTE: This program is intended for linux based OS **

**Table of Contents**

[TOC]

#Voice commands recognition
## Watson
Watson is a question-answering computer system capable of answering questions posed in natural language, developed in IBM's DeepQA project by a research team led by principal investigator David Ferrucci. Watson was named after IBM's first CEO, industrialist Thomas J. Watson.

```bash
rec -r 16k -c 2 ./voice_commands/audio_file.flac trim 0 2 >/dev/null 2>/dev/null

#apikey linked to my account
text=$(curl -X POST -u "apikey:vVIJzGFAoWbSAnBNLiIPROwc5ikxPbxopg0MnSTkRgjQ" \
	--header "Content-Type: audio/flac" --data-binary @./voice_commands/audio_file.flac  \
	"https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?model=es-ES_BroadbandModel")

echo $text > ./voice_commands/temp
value=$(grep -oP '(?<="transcript": ")[^"]*' ./voice_commands/temp)

./voice_commands/commands.sh $value
```

I got a free apikey from IBM so probably you will need to change that part.
I recorded 2 seconds of audio, enough for to say a word, and then send it to Watson, when i get the response i grep that json and get the identified word and i call another program where my commands are.
#Searching program
## Word in a file
## Groups
## Users

# Remote acces
## sshpass

#Server management
## Services
## Firewall
## Network scanner
