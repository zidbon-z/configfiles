#!/bin/env bash

# Define directories
TCD=$HOME/.config/configfiles/arch-hyprland/Theme_Changer
CFG=$HOME/.config/configfiles/arch-hyprland
# get a variable as an argument when the script is run
var1=$1
# get length of var1
n=${#var1}
# Check that length of var1 is greater than zero
if [ $n -gt 0 ]
then
  echo "yay!"
  # check if theme name already exists
  if grep -Fxq "$var1" $TCD/theme_list.txt
  then
    echo "This name already exists"
  else
    # Add entry to theme_list.txt
    echo "$var1" >> $TCD/theme_list.txt
    # Create folder for new theme
    mkdir $TCD/themes/$var1
    wait
    NTD=$TCD/themes/$var1
    # Create file for wofi
    cat $CFG/wofi/style.css > $NTD/wofi
    # Create file for hypr
    cat $CFG/hypr/myColors.conf > $NTD/hypr
    # Create file for waybar
    cat $CFG/waybar/style.css > $NTD/waybar
    # Create file for waypaper
    cat $CFG/waypaper/config.ini > $NTD/waypaper
    # Create file for kitty
    cat $CFG/kitty/current-theme.conf > $CFG/kitty/themes/$var1.conf
    # Add entry to theme_changer.sh 
    sed -i "/declare/atheme\[$var1\]\=\"$var1\" " $TCD/theme_changer.sh
    echo "New theme created"
  fi
else
  echo "You need to enter a theme name!"
fi

