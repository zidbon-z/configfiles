#!/bin/sh

# change bspwm
cat $HOME/.config/configfiles/theme_scripts/theme2/bspwm_theme2 > $HOME/.config/bspwm/themes/theme

# change nitrogen
nitrogen --head=1 --set-scaled /home/zidbon/Pictures/Backgrounds/anime/anime_0296.png --save
nitrogen --head=0 --set-scaled /home/zidbon/Pictures/Backgrounds/anime/anime_0234.png --save

# change kitty
#cat $HOME/.config/configfiles/theme_scripts/theme2/kitty_theme2 > $HOME/.config/kitty/kitty.conf
kitty +kitten themes --reload-in=all Kitty Theme2

# change bash_prompt
  cat  $HOME/.config/configfiles/theme_scripts/theme2/bash_prompt_theme2 > $HOME/.bash_prompt                      

# change rofi
cat ~/.config/configfiles/theme_scripts/theme2/rofi_theme2 > ~/.config/rofi/config.rasi

# change spacevim
sed -i 's/colorscheme =.*/colorscheme = "lunaperche"/' $HOME/.SpaceVim.d/init.toml

# change polybar
cat $HOME/.config/configfiles/theme_scripts/theme2/polybar_theme2 > $HOME/.config/polybar/config.ini

# reload bspwm
~/.config/bspwm/bspwmrc
