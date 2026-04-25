#!/bin/bash

# Die Optionen für Rofi (Icons passen zum Coffee-Vibe)
options="󰓅 Performance\n󰾆 Balanced\n󰌪 Power-Saver"

# Rofi aufrufen - wir nutzen dein Haupt-Theme und überschreiben nur die Größe
selected=$(echo -e "$options" | rofi -dmenu -i -p "Power Mode" \
    -theme-str 'window {width: 250px;} listview {lines: 3; columns: 1;}' \
    -config ~/.config/rofi/config.rasi)

# Profil setzen
case $selected in
    *Performance) powerprofilesctl set performance ;;
    *Balanced)    powerprofilesctl set balanced ;;
    *Power-Saver) powerprofilesctl set power-saver ;;
esac

# Feedback senden
if [ ! -z "$selected" ]; then
    notify-send "Power Profile" "Modus: $selected" -i battery
fi
