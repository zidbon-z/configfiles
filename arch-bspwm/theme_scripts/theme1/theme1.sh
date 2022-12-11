#!/bin/sh

# change bspwm
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/bspwm_theme1 > $HOME/.config/bspwm/themes/theme

# change nitrogen
nitrogen --set-scaled ~/.config/configfiles/arch-bspwm/theme_scripts/theme1/img.jpg --save

# change kitty
#cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/kitty_theme1 > $HOME/.config/kitty/kitty.conf
kitty +kitten themes --reload-in=all Kitty Theme1

# change bash_prompt
  cat  $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/bash_prompt_theme1 > $HOME/.bash_prompt

# change rofi
cat ~/.config/configfiles/arch-bspwm/theme_scripts/theme1/rofi_theme1 > ~/.config/rofi/config.rasi

# change spacevim
sed -i 's/colorscheme =.*/colorscheme = "elflord"/' $HOME/.SpaceVim.d/init.toml

# change polybar
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/polybar_theme1 > $HOME/.config/polybar/config.ini

# reload bspwm
~/.config/bspwm/bspwmrc

