#!/bin/sh

# change bspwm
cat $HOME/.config/bspwm/themes/theme1 > $HOME/.config/bspwm/themes/theme
# change nitrogen
nitrogen --set-scaled ~/Pictures/Backgrounds/distrotube/0074.jpg --save
# change kitty
cat $HOME/.config/kitty/kitty1.conf > $HOME/.config/kitty/kitty.conf
# reload bspwm
~/.config/bspwm/bspwmrc
