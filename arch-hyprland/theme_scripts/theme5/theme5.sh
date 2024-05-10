#!/bin/sh

# change bspwm
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/bspwm > $HOME/.config/bspwm/themes/theme

# change nitrogen
nitrogen --head=1 --set-scaled /home/zidbon/.config/configfiles/arch-bspwm/theme_scripts/theme5/img.png --save
nitrogen --head=0 --set-scaled /home/zidbon/.config/configfiles/arch-bspwm/theme_scripts/theme5/img.png --save

# change kitty
#cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/kitty_theme5 > $HOME/.config/kitty/kitty.conf
kitty +kitten themes --reload-in=all Kitty Theme5

# change bash_prompt
  cat  $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/bash_prompt > $HOME/.bash_prompt

# change rofi
cat ~/.config/configfiles/arch-bspwm/theme_scripts/theme5/rofi > ~/.config/rofi/config.rasi

# change spacevim
sed -i 's/colorscheme =.*/colorscheme = "lunaperche"/' $HOME/.SpaceVim.d/init.toml

# change polybar
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/polybar > $HOME/.config/polybar/config.ini
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/polylaunch > $HOME/.config/polybar/launch.sh

# change gtk icon and cursor theme
#cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/xsettings_theme5 > $HOME/.xsettingsd
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/gtk2 > $HOME/.gtkrc-2.0
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/gtk3 > $HOME/.config/gtk-3.0/settings.ini

# change qt5 cursor
cat $HOME/.config/configfiles/arch-bspwm/theme_scripts/theme5/qt5 > $HOME/.icons/default/index.theme

# reload bspwm
~/.config/bspwm/bspwmrc

