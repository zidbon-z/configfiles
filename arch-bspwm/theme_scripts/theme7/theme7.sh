#!/bin/sh

# change bspwm
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme7/bspwm_theme7 > $HOME/.config/bspwm/themes/theme
# change nitrogen
nitrogen --set-scaled ~/.config/configfiles/arch-bspwm/theme_scripts/theme7/img.png --save
# change kitty
#cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme2/kitty_theme2 > $HOME/.config/kitty/kitty.conf
kitty +kitten themes --reload-in=all Kitty Theme2

# change bash_prompt
  cat  $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme7/bash_prompt_theme7 > $HOME/.bash_prompt                      

# change rofi
cat ~/.config/configfiles/arch-bspwm/theme_scripts/theme7/rofi_theme7 > ~/.config/rofi/config.rasi

# change spacevim
sed -i 's/colorscheme =.*/colorscheme = "lunaperche"/' $HOME/.SpaceVim.d/init.toml

# change polybar
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme7/polybar_theme7 > $HOME/.config/polybar/config.ini

# reload bspwm
~/.config/bspwm/bspwmrc
