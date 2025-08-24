#!/usr/bin/env bash

timeout_min=$(printf "01\n05\n10\n15\n30\n60" | dmenu -i -p "Timeout (min):")
if ! [[ "$timeout_min" =~ ^[0-9]+$ ]]; then
  dunstify "Timer" "Invalid timeout." -u critical
  exit 1
fi
delay=$((timeout_min * 60))

msg=$(echo "" | dmenu -i -p "Notification message:")
if [ -z "$msg" ]; then
  msg="Time’s up!"
fi

(
  sleep "$delay"
  dunstify "Timer" "$msg" || notify-send "Timer" "$msg"
) &

dunstify "Timer set" "Will alert in $timeout_min minutes."

