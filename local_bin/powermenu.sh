#!/bin/bash

options="󰐥 Shutdown\n󰜉 Reboot\n󰤄 Suspend\n󰍃 Logout\n󰗼 Lock"

# Wir überschreiben das Layout direkt im Befehl (-theme-str)
selected=$(echo -e "$options" | rofi -dmenu -i -p "Power" \
    -theme-str 'window {width: 300px;} listview {columns: 1; lines: 5;}' \
    -config ~/.config/rofi/config.rasi)

case $selected in
    *Shutdown) systemctl poweroff ;;
    *Reboot) systemctl reboot ;;
    *Suspend) systemctl suspend ;;
    *Logout) swaymsg exit ;;
    *Lock) swaylock ;;
esac
