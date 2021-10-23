#!/usr/bin/env sh

#  D=$(bspc query –desktops –desktop focused);
#  W=$(bspc query –windows –window focused);
#  bspc query –desktops | grep -q “‘$D” || bspc monitor –add-desktops '$D;
#  bspc window $W --to-desktop \'$D

#  D=$(bspc query –desktops –desktop focused);
#  W=$(bspc query –windows –window focused);
#  bspc query –desktops | grep -q “‘$D” || bspc monitor –add-desktops '$D;
#  bspc w

hidden=$(bspc query -N -n .hidden -d focused)

if [ -z "$hidden" ]; then
	bspc node focused -g hidden=on
else
	bspc node "$hidden" -g hidden=off
fi
