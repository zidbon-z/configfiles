#!/bin/env bash

# Set config directory
CFG="$HOME/.config/configfiles/arch-hyprland"

# Create theme array
declare -A theme
theme[coffee]="coffee"
theme[black]="black"
theme[gruvbox]="gruvbox"
theme[neon - blue]="neon-blue"
theme[fallout]="fallout"
theme[tokyo]="tokyo"

# Show wofi menu to select theme
choice=$(printf '%s\n' "${!theme[@]}" | wofi --dmenu)
wait

if [ $choice ]; then
  # Change wofi theme
  cat $CFG/Theme_Changer/themes/$choice/wofi >$CFG/wofi/style.css

  # Change waybar theme
  cat $CFG/Theme_Changer/themes/$choice/waybar >$CFG/waybar/style.css
  pkill waybar && sleep 1 && hyprctl dispatch exec waybar

  # Change hyprland theme
  cat $CFG/Theme_Changer/themes/$choice/hypr >$CFG/hypr/myColors.conf

  # Change waypaper theme
  cat $CFG/Theme_Changer/themes/$choice/waypaper >$CFG/waypaper/config.ini
  waypaper --restore

  # Change kitty theme
  kitty +kitten themes --reload-in=all $choice
else
  exit
fi
