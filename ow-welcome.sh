#!/bin/bash
echo  "Welcome to HyperWeasel (Warlord). Please enter the root password to configure your hostname."
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"
echo -n "What do you want your hostname to be? "
read weaselhostname

hostname $weaselhostname
rm -r /home/warlord/ice/ow-welcome.sh
rm -r /home/warlord/.config/openbox/autostart
cp /home/warlord/ice/autostart /home/warlord/ice/.config/openbox/
rm -r /home/warlord/ice/autostart
exit
