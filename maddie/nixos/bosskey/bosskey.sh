#!/bin/sh

while getopts "lrpm:u:" options; do
  case $options in
    m)
      devices=$OPTARG
      if echo "$devices" | grep "mic" &>/dev/null; then
        # Mute the microphone
        pamixer --default-source --mute
      fi
      if echo "$devices" | grep "vol" &>/dev/null; then
        # Mute the volume
        pamixer --mute
      fi
      ;;

    u)
      devices=$OPTARG
      if echo "$devices"| grep "mic" &>/dev/null; then
        # Mute the microphone
        pamixer --default-source --unmute
      fi
      if echo "$devices" | grep "vol" &>/dev/null; then
        # Unmute the volume
        pamixer --unmute
      fi
      ;;

    p)
      # Pause any playing media
      playerctl pause
      ;;

    l)
      # Lock the screen using slock(1)
      slock
      ;;
  esac
done
