#!/bin/bash

# Audio-Sinks auslesen
sinks=$(pactl list short sinks | awk '{print $2}')
current=$(pactl get-default-sink)

list=""
for sink in $sinks; do
    if [ "$sink" == "$current" ]; then
        list+="󰓃 ${sink}\n"
    else
        list+="󰓄 ${sink}\n"
    fi
done

# Rofi mit deinem Ronema-Style aufrufen
choice=$(echo -e "$list" | rofi -dmenu -i -theme ~/.config/rofi/audio.rasi)

if [ -n "$choice" ]; then
    # Icon entfernen um den reinen Namen zu bekommen
    sink_name=$(echo "$choice" | sed 's/󰓃 //;s/󰓄 //')
    pactl set-default-sink "$sink_name"
    notify-send "Audio" "Ausgang gewechselt: $sink_name" -i audio-speakers
fi
