#! /usr/bin/bash

# Test if the configfiles repo has been cloned
if [ -d $HOME/.config/configfiles ] 
then
  echo "Setting up symbolic links to config files"

  # Symlink .xinitrc
  if [ -f "$HOME/.config/configfiles/home/.xinitrc" ]
  then
    if [ -f "$HOME/.xinitrc" ]
    then
      rm "$HOME/.xinitrc"
      ln -s $HOME/.config/configfiles/home/.xinitrc $HOME/.xinitrc
    else
      ln -s $HOME/.config/configfiles/home/.xinitrc $HOME/.xinitrc
    fi
  fi

  # Symlink .bashrc
  if [ -f "$HOME/.config/configfiles/home/.bashrc" ]
  then
    if [ -f "$HOME/.bashrc" ]
    then
      rm "$HOME/.bashrc"
      ln -s $HOME/.config/configfiles/home/.bashrc $HOME/.bashrc
    else
      ln -s $HOME/.config/configfiles/home/.bashrc $HOME/.bashrc
    fi
  fi
 
  # Symlink .Xresources
  if [ -f "$HOME/.config/configfiles/home/.Xresources" ]
  then
    if [ -f "$HOME/.Xresources" ]
    then
      rm "$HOME/.Xresources"
      ln -s $HOME/.config/configfiles/home/.Xresources $HOME/.Xresources
    else
      ln -s $HOME/.config/configfiles/home/.Xresources $HOME/.Xresources
    fi
  fi
 
  # Symlink newsboat
  if [ -d "$HOME/.config/configfiles/home/newsboat" ]
  then
    if [ -d "$HOME/.newsboat" ]
    then
      rm -rf "$HOME/.newsboat"
      ln -s $HOME/.config/configfiles/home/newsboat $HOME/.newsboat
    else
      ln -s $HOME/.config/configfiles/home/newsboat $HOME/.newsboat
    fi
  fi
 
  # Symlink bspwm
  if [ -d "$HOME/.config/configfiles/bspwm" ]
  then
    if [ -d "$HOME/.config/bspwm" ]
    then
      rm -rf "$HOME/.config/bspwm"
      ln -s $HOME/.config/configfiles/bspwm $HOME/.config/bspwm
    else
      ln -s $HOME/.config/configfiles/bspwm $HOME/.config/bspwm
    fi
  fi
 
  # Symlink sxhkd
  if [ -d "$HOME/.config/configfiles/sxhkd" ]
  then
    if [ -d "$HOME/.config/sxhkd" ]
    then
      rm -rf "$HOME/.config/sxhkd"
      ln -s $HOME/.config/configfiles/sxhkd $HOME/.config/sxhkd
    else
      ln -s $HOME/.config/configfiles/sxhkd $HOME/.config/sxhkd
    fi
  fi
 
  # Symlink picom
  if [ -d "$HOME/.config/configfiles/picom" ]
  then
    if [ -d "$HOME/.config/picom" ]
    then
      rm -rf "$HOME/.config/picom"
      ln -s $HOME/.config/configfiles/picom $HOME/.config/picom
    else
      ln -s $HOME/.config/configfiles/picom $HOME/.config/picom
    fi
  fi
 
  # Symlink ranger
  if [ -d "$HOME/.config/configfiles/ranger" ]
  then
    if [ -d "$HOME/.config/ranger" ]
    then
      rm -rf "$HOME/.config/ranger"
      ln -s $HOME/.config/configfiles/ranger $HOME/.config/ranger
    else
      ln -s $HOME/.config/configfiles/ranger $HOME/.config/ranger
    fi
  fi
 
  # Symlink kitty
  if [ -d "$HOME/.config/configfiles/kitty" ]
  then
    if [ -d "$HOME/.config/kitty" ]
    then
      rm -rf "$HOME/.config/kitty"
      ln -s $HOME/.config/configfiles/kitty $HOME/.config/kitty
    else
      ln -s $HOME/.config/configfiles/kitty $HOME/.config/kitty
    fi
  fi
 
  # Symlink bpytop
  if [ -d "$HOME/.config/configfiles/bpytop" ]
  then
    if [ -d "$HOME/.config/bpytop" ]
    then
      rm -rf "$HOME/.config/bpytop"
      ln -s $HOME/.config/configfiles/bpytop $HOME/.config/bpytop
    else
      ln -s $HOME/.config/configfiles/bpytop $HOME/.config/bpytop
    fi
  fi

  # Symlink spacevim
  if [ -d "$HOME/.config/configfiles/.SpaceVim.d" ]
  then
    if [ -d "$HOME/.SpaceVim.d" ]
    then
      rm -rf "$HOME/.SpaceVim.d"
      ln -s $HOME/.config/configfiles/.SpaceVim.d $HOME/.SpaceVim.d
    else
      ln -s $HOME/.config/configfiles/.SpaceVim.d $HOME/.SpaceVim.d
    fi
  fi
 
  # Symlink polybar
  if [ -d "$HOME/.config/configfiles/polybar" ]
  then
    if [ -d "$HOME/.config/polybar" ]
    then
      rm -rf "$HOME/.config/polybar"
      ln -s $HOME/.config/configfiles/polybar $HOME/.config/polybar
    else
      ln -s $HOME/.config/configfiles/polybar $HOME/.config/polybar
    fi
  fi
 









else
  #cd $HOME/.config
  git clone "https://github.com/zidbon-z/configfiles" $HOME/.config/
  wait
  bash $HOME/.config/configfiles/symlink_dotfiles.sh
  
  
fi
