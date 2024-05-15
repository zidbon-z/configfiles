#!/bin/env bash

# Set config directory
CFG="$HOME/.config/configfiles/arch-hyprland"

# Create theme array
declare -A theme
theme[black]="black"
theme[gruvbox]="gruvbox"
theme[neon-blue]="neon-blue"

# Show wofi menu to select theme
choice=$(printf '%s\n' "${!theme[@]}" | wofi --dmenu) &&


# Change wofi theme
cat $CFG/wofi/colors/$choice > $CFG/wofi/style.css

# Change waybar theme
cat $CFG/waybar/colors/$choice > $CFG/waybar/style.css
pkill waybar && sleep 1 && hyprctl dispatch exec waybar

# Change hyprland theme
cat $CFG/hypr/colors/$choice > $CFG/hypr/myColors.conf

# Change waypaper theme
cat $CFG/waypaper/colors/$choice > $CFG/waypaper/config.ini
waypaper --restore

# Change kitty theme
kitty +kitten themes --reload-in=all $choice
