#!/bin/bash

CURRENT=$(cat ./current.log)

NEXT=$(expr $CURRENT + 1)

COUNT=$(ls ~/Music/SystemSounds/ | wc -l) 

if [ "$NEXT" -ge "$COUNT" ]; then
	NEXT=0
fi

echo $NEXT > ./current.log

gsettings set org.cinnamon.sounds login-file ~/Music/SystemSounds/$NEXT.ogg 
