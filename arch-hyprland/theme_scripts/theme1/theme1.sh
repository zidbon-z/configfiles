#!/bin/sh

# change bspwm
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/bspwm > $HOME/.config/bspwm/themes/theme

# change nitrogen
nitrogen --head=1 --set-scaled /home/zidbon/.config/configfiles/arch-bspwm/theme_scripts/theme1/img.jpg --save
nitrogen --head=0 --set-scaled /home/zidbon/.config/configfiles/arch-bspwm/theme_scripts/theme1/img.jpg --save

# change kitty
#cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/kitty_theme6 > $HOME/.config/kitty/kitty.conf
kitty +kitten themes --reload-in=all Neowave

# change bash_prompt
  cat  $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/bash_prompt > $HOME/.bash_prompt

# change rofi
cat ~/.config/configfiles/arch-bspwm/theme_scripts/theme1/rofi > ~/.config/rofi/config.rasi

# change spacevim
sed -i 's/vim.cmd("colorscheme.*/vim.cmd("colorscheme elflord")/' $HOME/.config/nvim/lua/zidbon/core/options.lua

# change polybar
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/polybar > $HOME/.config/polybar/config.ini
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/polylaunch > $HOME/.config/polybar/launch.sh

# change gtk icon and cursor theme
#cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/xsettings_theme6 > $HOME/.xsettingsd
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/gtk2 > $HOME/.gtkrc-2.0
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/gtk3 > $HOME/.config/gtk-3.0/settings.ini

# change qt5 cursor
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme1/qt5 > $HOME/.icons/default/index.theme 

# reload bspwm
~/.config/bspwm/bspwmrc

