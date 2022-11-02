#! /bin/sh

# This is a script to find your monitors in xrandr
# then generate a 10-monitor.conf file and copy it
# to /etc/X11/xorg.conf.d/10-monitor.conf.

# Define variables for monitors
monitor1="$(xrandr | awk '/ connected/ {print $1}' | head -n 1)"
monitor2="$(xrandr | awk '/ connected/ {print $1}' | tail -n 1)"

# Generate a 10-monitor.conf file in the configfiles directory
echo "Section \"Monitor\"" > $HOME/.config/configfiles/10-monitor.conf
echo "  Identifier  \"$monitor1\"" >> $HOME/.config/configfiles/10-monitor.conf
echo "  Option      \"Primary\"   \"true\"" >> $HOME/.config/configfiles/10-monitor.conf
echo "  Option      \"DPMS\"      \"Disable\"" >> $HOME/.config/configfiles/10-monitor.conf
echo "EndSection" >> $HOME/.config/configfiles/10-monitor.conf
echo "" >> $HOME/.config/configfiles/10-monitor.conf
echo "Section \"Monitor\"" >> $HOME/.config/configfiles/10-monitor.conf
echo "  Identifier  \"$monitor2\"" >> $HOME/.config/configfiles/10-monitor.conf
echo "  Option      \"RightOf\"   \"$monitor1\"" >> $HOME/.config/configfiles/10-monitor.conf
echo "  Option      \"DPMS\"      \"Disable\"" >> $HOME/.config/configfiles/10-monitor.conf
echo "EndSection" >> $HOME/.config/configfiles/10-monitor.conf
wait

# Remove any existing 10-monitor.conf file and replace it with the one 
# that was just created.
if [ -f /etc/X11/xorg.conf.d/10-monitor.conf ]
then
  sudo rm /etc/X11/xorg.conf.d/10-monitor.conf
  wait
  sudo cp $HOME/.config/configfiles/10-monitor.conf /etc/X11/xorg.conf.d/
else
  sudo cp $HOME/.config/configfiles/10-monitor.conf /etc/X11/xorg.conf.d/
fi
