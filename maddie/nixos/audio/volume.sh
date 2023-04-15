#!/usr/bin/env sh

COMMAND="$@"
[ -z $COMMAND ] && echo "usage: volume [up|down|mute]" && exit 1

if [ $COMMAND = "up" ]; then
  pamixer --allow-boost -i 5
elif [ $COMMAND = "down" ]; then
  pamixer --allow-boost -d 5
elif [ $COMMAND = "mute" ]; then
  pamixer -t
else
	echo "volume: command not found" && exit 1
fi

MUTED="$(pamixer --get-mute)"
if [ $MUTED = "true" ]; then
  MUTE_CHAR="!"
else
  MUTE_CHAR=""
fi

VOLUME=$(pamixer --get-volume)
echo "$VOLUME""$MUTE_CHAR" > /tmp/volume.fifo
