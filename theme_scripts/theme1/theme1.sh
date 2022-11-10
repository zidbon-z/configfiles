#!/bin/sh

# change bspwm
cat $HOME/.config/configfiles/theme_scripts/theme1/bspwm_theme1 > $HOME/.config/bspwm/themes/theme
# change nitrogen
nitrogen --set-scaled ~/.config/configfiles/theme_scripts/theme1/img.jpg
# change kitty
cat $HOME/.config/configfiles/theme_scripts/theme1/kitty_theme1 > $HOME/.config/kitty/kitty.conf

# change bash_prompt
if [ -f "$HOME/.bash_prompt" ]                                                          
then                                                                                
  rm "$HOME/.bash_prompt"                                                               
  cat  $HOME/.config/configfiles/theme_scripts/theme1/bash_prompt_theme1 > $HOME/.bash_prompt                      
else                                                                                
  cat  $HOME/.config/configfiles/theme_scripts/theme1/bash_prompt_theme1 > $HOME/.bash_prompt                      
fi    

# change rofi
cat ~/.config/configfiles/theme_scripts/theme1/rofi_theme1 > ~/.config/rofi/config.rasi

# reload bspwm
~/.config/bspwm/bspwmrc
