#!/bin/sh

# change bspwm
cat $HOME/.config/configfiles/theme_scripts/theme2/bspwm_theme2 > $HOME/.config/bspwm/themes/theme
# change nitrogen
nitrogen --set-scaled ~/.config/configfiles/theme_scripts/theme2/img.jpg --save
# change kitty
#cat $HOME/.config/configfiles/theme_scripts/theme2/kitty_theme2 > $HOME/.config/kitty/kitty.conf
kitty +kitten themes --reload-in=all Kitty Theme2

# change bash_prompt
  cat  $HOME/.config/configfiles/theme_scripts/theme2/bash_prompt_theme2 > $HOME/.bash_prompt                      

# change rofi
cat ~/.config/configfiles/theme_scripts/theme2/rofi_theme2 > ~/.config/rofi/config.rasi

# change spacevim
sed -i 's/colorscheme =.*/colorscheme = "lunaperche"/' $HOME/.SpaceVim.d/init.toml

# reload bspwm
~/.config/bspwm/bspwmrc
