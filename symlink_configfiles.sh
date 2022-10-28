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
    if [ -d "$HOME/newsboat" ]
    then
      rm -rf "$HOME/newsboat"
      ln -s $HOME/.config/configfiles/home/newsboat $HOME/newsboat
    else
      ln -s $HOME/.config/configfiles/home/newsboat $HOME/newsboat
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





else
  cd $HOME/.config
  git clone "https://github.com/zidbon-z/configfiles"
  wait
  bash $HOME/.config/configfiles/symlink_dotfiles.sh
  
  
fi
