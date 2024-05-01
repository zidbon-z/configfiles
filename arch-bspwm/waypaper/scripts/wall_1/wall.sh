#!/bin/sh
echo "Hello dickface"
cat $HOME/.config/waypaper/scripts/wall_1/config > $HOME/.config/waypaper/config.ini
#sleep 2 &&
waypaper --restore
