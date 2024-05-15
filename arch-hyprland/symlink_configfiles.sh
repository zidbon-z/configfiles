#! /usr/bin/bash

# Test if the configfiles repo has been cloned
if [ -d $HOME/.config/configfiles/arch-hyprland ] 
then
  echo "Setting up symbolic links to config files"


  # Symlink .bashrc
  if [ -f "$HOME/.config/configfiles/arch-hyprland/home/.bashrc" ]
  then
    if [ -f "$HOME/.bashrc" ]
    then
      rm "$HOME/.bashrc"
      ln -s $HOME/.config/configfiles/arch-hyprland/home/.bashrc $HOME/.bashrc
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/home/.bashrc $HOME/.bashrc
    fi
  fi
 
 
  # Symlink newsboat
  if [ -d "$HOME/.config/configfiles/arch-hyprland/home/newsboat" ]
  then
    if [ -d "$HOME/.newsboat" ]
    then
      rm -rf "$HOME/.newsboat"
      ln -s $HOME/.config/configfiles/arch-hyprland/home/newsboat $HOME/.newsboat
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/home/newsboat $HOME/.newsboat
    fi
  fi
 
  # Symlink hyprland
  if [ -d "$HOME/.config/configfiles/arch-hyprland/bspwm" ]
  then
    if [ -d "$HOME/.config/hyprland" ]
    then
      rm -rf "$HOME/.config/hyprland"
      ln -s $HOME/.config/configfiles/arch-hyprland/bspwm $HOME/.config/bspwm
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/bspwm $HOME/.config/bspwm
    fi
  fi
 
 
 
  # Symlink ranger
  if [ -d "$HOME/.config/configfiles/arch-hyprland/ranger" ]
  then
    if [ -d "$HOME/.config/ranger" ]
    then
      rm -rf "$HOME/.config/ranger"
      ln -s $HOME/.config/configfiles/arch-hyprland/ranger $HOME/.config/ranger
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/ranger $HOME/.config/ranger
    fi
  fi
 
  # Symlink kitty
  if [ -d "$HOME/.config/configfiles/arch-hyprland/kitty" ]
  then
    if [ -d "$HOME/.config/kitty" ]
    then
      rm -rf "$HOME/.config/kitty"
      ln -s $HOME/.config/configfiles/arch-hyprland/kitty $HOME/.config/kitty
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/kitty $HOME/.config/kitty
    fi
  fi
 

  # Symlink Neovim
  if [ -d "$HOME/.config/configfiles/arch-hyprland/nvim" ]
  then
    if [ -d "$HOME/.config/nvim" ]
    then
      rm -rf "$HOME/.config/nvim"
      ln -s $HOME/.config/configfiles/arch-hyprland/nvim $HOME/.config/nvim
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/nvim $HOME/.config/nvim
    fi
  fi
 
 
  # Symlink Waybar
  if [ -d "$HOME/.config/configfiles/arch-hyprland/waybar" ]
  then
    if [ -d "$HOME/.config/waybar" ]
    then
      rm -rf "$HOME/.config/waybar"
      ln -s $HOME/.config/configfiles/arch-hyprland/waybar $HOME/.config/waybar
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/waybar $HOME/.config/waybar
    fi
  fi
 
  # Symlink Waypaper
  if [ -d "$HOME/.config/configfiles/arch-hyprland/waypaper" ]
  then
    if [ -d "$HOME/.config/waypaper" ]
    then
      rm -rf "$HOME/.config/waypaper"
      ln -s $HOME/.config/configfiles/arch-hyprland/waypaper $HOME/.config/waypaper
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/waypaper $HOME/.config/waypaper
    fi
  fi
 
  # Symlink Hyprland config
  if [ -d "$HOME/.config/configfiles/arch-hyprland/hypr" ]
  then
    if [ -d "$HOME/.config/hypr" ]
    then
      rm -rf "$HOME/.config/hypr"
      ln -s $HOME/.config/configfiles/arch-hyprland/hypr $HOME/.config/hypr
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/hypr $HOME/.config/hypr
    fi
  fi
 
  # Symlink zshrc
  if [ -f "$HOME/.config/configfiles/arch-hyprland/zsh/.zshrc" ]
  then
    if [ -f "$HOME/.zshrc" ]
    then
      rm -rf "$HOME/.zshrc"
      ln -s $HOME/.config/configfiles/arch-hyprland/zsh/.zshrc $HOME/.zshrc
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/zsh/.zshrc $HOME/.zshrc
    fi
  fi
 
  # Symlink wofi
  if [ -d "$HOME/.config/configfiles/arch-hyprland/wofi" ]
  then
    if [ -d "$HOME/.config/wofi" ]
    then
      rm -rf "$HOME/.config/wofi"
      ln -s $HOME/.config/configfiles/arch-hyprland/wofi $HOME/.config/wofi
    else
      ln -s $HOME/.config/configfiles/arch-hyprland/wofi $HOME/.config/wofi
    fi
  fi
 
 
 
 
 
 
 

else
  #cd $HOME/.config
  git clone "https://github.com/zidbon-z/configfiles" $HOME/.config/
  wait
  bash $HOME/.config/configfiles/arch-hyprland/symlink_dotfiles.sh
  
  
fi
