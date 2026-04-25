#!/bin/bash

FLAG="/tmp/waybar_cava_on"

# FUNKTION: Toggle (An/Aus)
if [ "$1" == "toggle" ]; then
    if [ -f "$FLAG" ]; then
        rm "$FLAG"
        # Wir killen Cava und das laufende Skript hart
        killall -9 cava 2>/dev/null
    else
        touch "$FLAG"
    fi
    exit 0
fi

# FUNKTION: Run (Die Welle)
while true; do
    if [ -f "$FLAG" ]; then
        # Cava starten
        mkdir -p ~/.config/cava
        echo "[general]
bars = 14
framerate = 20
channels = mono
[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7" > ~/.config/cava/config_waybar

        ZERO_BLOCK=$(printf '\xe2\x96\x81')
        
        # Startet Cava und bricht ab, sobald die Flag-Datei verschwindet
        cava -p ~/.config/cava/config_waybar | while read -r line; do
            if [ ! -f "$FLAG" ]; then killall -9 cava; break; fi
            echo "$line" | sed "s/;//g; s/0/$ZERO_BLOCK/g; s/1/▂/g; s/2/▃/g; s/3/▄/g; s/4/▅/g; s/5/▆/g; s/6/▇/g; s/7/█/g"
        done
    else
        # Wenn aus: Gib nichts aus und warte kurz
        echo ""
        sleep 2
    fi
done
