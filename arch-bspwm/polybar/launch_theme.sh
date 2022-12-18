#!/usr/bin/env bash
#
THEME=$(cat $HOME/.config/bspwm/current_theme)

killall polybar

polybar -q bar1 -c "$HOME"/.config/polybar/themes/"$THEME" &
polybar -q bar2 -c "$HOME"/.config/polybar/themes/"$THEME" &
