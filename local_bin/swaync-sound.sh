#!/bin/bash

# Status abfragen und alle Leerzeichen/Umbrüche entfernen
STATUS=$(swaync-client -D | tr -d '[:space:]')

# Debug: Falls du wissen willst, was passiert, nimm das '#' vor der nächsten Zeile weg
# echo "DND Status ist: '$STATUS'" >> /tmp/swaync_debug.log

if [ "$STATUS" = "false" ]; then
    # Nur wenn der Status exakt 'false' ist, wird abgespielt
    pw-play /usr/share/sounds/freedesktop/stereo/message.oga
fi