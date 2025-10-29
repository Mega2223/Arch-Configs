#!/bin/bash

WALLPAPER_PATH="${HOME}/Pictures/wallpapers/"
WALLPAPER=$(ls $WALLPAPER_PATH | wofi --show=dmenu)

swww img "${WALLPAPER_PATH}${WALLPAPER}" --transition-type any --transition-step 60 --transition-fps 60
wal -i "${WALLPAPER_PATH}${WALLPAPER}" -n
pkill -USR2 cava
#swaync-client -rs
#pywalfox update
#spicetify restore backup; spicetify backup apply
