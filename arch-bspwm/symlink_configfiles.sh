#! /usr/bin/bash

# Test if the configfiles repo has been cloned
if [ -d $HOME/.config/configfiles/arch-bspwm ] 
then
  echo "Setting up symbolic links to config files"

  # Symlink .xinitrc
  if [ -f "$HOME/.config/configfiles/arch-bspwm/home/.xinitrc" ]
  then
    if [ -f "$HOME/.xinitrc" ]
    then
      rm "$HOME/.xinitrc"
      ln -s $HOME/.config/configfiles/arch-bspwm/home/.xinitrc $HOME/.xinitrc
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/home/.xinitrc $HOME/.xinitrc
    fi
  fi

  # Symlink .bashrc
  if [ -f "$HOME/.config/configfiles/arch-bspwm/home/.bashrc" ]
  then
    if [ -f "$HOME/.bashrc" ]
    then
      rm "$HOME/.bashrc"
      ln -s $HOME/.config/configfiles/arch-bspwm/home/.bashrc $HOME/.bashrc
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/home/.bashrc $HOME/.bashrc
    fi
  fi
 
  # Symlink .Xresources
  if [ -f "$HOME/.config/configfiles/arch-bspwm/home/.Xresources" ]
  then
    if [ -f "$HOME/.Xresources" ]
    then
      rm "$HOME/.Xresources"
      ln -s $HOME/.config/configfiles/arch-bspwm/home/.Xresources $HOME/.Xresources
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/home/.Xresources $HOME/.Xresources
    fi
  fi
 
  # Symlink newsboat
  if [ -d "$HOME/.config/configfiles/arch-bspwm/home/newsboat" ]
  then
    if [ -d "$HOME/.newsboat" ]
    then
      rm -rf "$HOME/.newsboat"
      ln -s $HOME/.config/configfiles/arch-bspwm/home/newsboat $HOME/.newsboat
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/home/newsboat $HOME/.newsboat
    fi
  fi
 
  # Symlink bspwm
  if [ -d "$HOME/.config/configfiles/arch-bspwm/bspwm" ]
  then
    if [ -d "$HOME/.config/bspwm" ]
    then
      rm -rf "$HOME/.config/bspwm"
      ln -s $HOME/.config/configfiles/arch-bspwm/bspwm $HOME/.config/bspwm
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/bspwm $HOME/.config/bspwm
    fi
  fi
 
  # Symlink sxhkd
  if [ -d "$HOME/.config/configfiles/arch-bspwm/sxhkd" ]
  then
    if [ -d "$HOME/.config/sxhkd" ]
    then
      rm -rf "$HOME/.config/sxhkd"
      ln -s $HOME/.config/configfiles/arch-bspwm/sxhkd $HOME/.config/sxhkd
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/sxhkd $HOME/.config/sxhkd
    fi
  fi
 
  # Symlink picom
  if [ -d "$HOME/.config/configfiles/arch-bspwm/picom" ]
  then
    if [ -d "$HOME/.config/picom" ]
    then
      rm -rf "$HOME/.config/picom"
      ln -s $HOME/.config/configfiles/arch-bspwm/picom $HOME/.config/picom
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/picom $HOME/.config/picom
    fi
  fi
 
  # Symlink ranger
  if [ -d "$HOME/.config/configfiles/arch-bspwm/ranger" ]
  then
    if [ -d "$HOME/.config/ranger" ]
    then
      rm -rf "$HOME/.config/ranger"
      ln -s $HOME/.config/configfiles/arch-bspwm/ranger $HOME/.config/ranger
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/ranger $HOME/.config/ranger
    fi
  fi
 
  # Symlink kitty
  if [ -d "$HOME/.config/configfiles/arch-bspwm/kitty" ]
  then
    if [ -d "$HOME/.config/kitty" ]
    then
      rm -rf "$HOME/.config/kitty"
      ln -s $HOME/.config/configfiles/arch-bspwm/kitty $HOME/.config/kitty
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/kitty $HOME/.config/kitty
    fi
  fi
 
  # Symlink bpytop
  if [ -d "$HOME/.config/configfiles/arch-bspwm/bpytop" ]
  then
    if [ -d "$HOME/.config/bpytop" ]
    then
      rm -rf "$HOME/.config/bpytop"
      ln -s $HOME/.config/configfiles/arch-bspwm/bpytop $HOME/.config/bpytop
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/bpytop $HOME/.config/bpytop
    fi
  fi

  # Symlink Neovim
  if [ -d "$HOME/.config/configfiles/arch-bspwm/nvim" ]
  then
    if [ -d "$HOME/.config/nvim" ]
    then
      rm -rf "$HOME/.config/nvim"
      ln -s $HOME/.config/configfiles/arch-bspwm/nvim $HOME/.config/nvim
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/nvim $HOME/.config/nvim
    fi
  fi
 
  # Symlink polybar
  if [ -d "$HOME/.config/configfiles/arch-bspwm/polybar" ]
  then
    if [ -d "$HOME/.config/polybar" ]
    then
      rm -rf "$HOME/.config/polybar"
      ln -s $HOME/.config/configfiles/arch-bspwm/polybar $HOME/.config/polybar
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/polybar $HOME/.config/polybar
    fi
  fi
 
  # Symlink Waybar
  if [ -d "$HOME/.config/configfiles/arch-bspwm/waybar" ]
  then
    if [ -d "$HOME/.config/waybar" ]
    then
      rm -rf "$HOME/.config/waybar"
      ln -s $HOME/.config/configfiles/arch-bspwm/waybar $HOME/.config/waybar
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/waybar $HOME/.config/waybar
    fi
  fi
 
  # Symlink Waypaper
  if [ -d "$HOME/.config/configfiles/arch-bspwm/waypaper" ]
  then
    if [ -d "$HOME/.config/waypaper" ]
    then
      rm -rf "$HOME/.config/waypaper"
      ln -s $HOME/.config/configfiles/arch-bspwm/waypaper $HOME/.config/waypaper
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/waypaper $HOME/.config/waypaper
    fi
  fi
 
  # Symlink Hyprland config
  if [ -d "$HOME/.config/configfiles/arch-bspwm/hypr" ]
  then
    if [ -d "$HOME/.config/hypr" ]
    then
      rm -rf "$HOME/.config/hypr"
      ln -s $HOME/.config/configfiles/arch-bspwm/hypr $HOME/.config/hypr
    else
      ln -s $HOME/.config/configfiles/arch-bspwm/hypr $HOME/.config/hypr
    fi
  fi
 
 
 
 
 

else
  #cd $HOME/.config
  git clone "https://github.com/zidbon-z/configfiles" $HOME/.config/
  wait
  bash $HOME/.config/configfiles/arch-bspwm/symlink_dotfiles.sh
  
  
fi
