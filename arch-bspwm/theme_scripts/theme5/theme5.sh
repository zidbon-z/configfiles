#!/bin/sh

# change bspwm
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/bspwm_theme5 > $HOME/.config/bspwm/themes/theme

# change nitrogen
nitrogen --head=1 --set-scaled /home/zidbon/.config/configfiles/arch-bspwm/theme_scripts/theme5/img.png --save
nitrogen --head=0 --set-scaled /home/zidbon/.config/configfiles/arch-bspwm/theme_scripts/theme5/img.png --save

# change kitty
#cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/kitty_theme5 > $HOME/.config/kitty/kitty.conf
kitty +kitten themes --reload-in=all 1984 Dark

# change bash_prompt
  cat  $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/bash_prompt_theme5 > $HOME/.bash_prompt

# change rofi
cat ~/.config/configfiles/arch-bspwm/theme_scripts/theme5/rofi_theme5 > ~/.config/rofi/config.rasi

# change spacevim
sed -i 's/colorscheme =.*/colorscheme = "lunaperche"/' $HOME/.SpaceVim.d/init.toml

# change polybar
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/polybar_theme5 > $HOME/.config/polybar/config.ini

# reload bspwm
~/.config/bspwm/bspwmrc

