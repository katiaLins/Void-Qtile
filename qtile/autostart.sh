#!/bin/sh
picom & disown # --experimental-backends --vsync should prevent screen tearing on most setups if needed

# Low battery notifier
#~/.config/qtile/scripts/check_battery.sh & disown
#~/.config/qtile/scripts/low_bat_notifier.sh & disown
#cbatticon &

# Start welcome
eos-welcome & disown
nm-applet &
nitrogen --restore

#Teclado
xmodmap -e "keycode 66 = Mode_switch" &&
xmodmap -e "keysym j = j J Left" &&
xmodmap -e "keysym k = k K Down" &&
xmodmap -e "keysym i = i I Up" &&
xmodmap -e "keysym l = l L Right"
xmodmap -e "keycode 50 = Mode_switch" &&
xmodmap -e "keycode 9 = Escape NoSymbol quotedbl"

#Autentication
/usr/libexec/xfce-polkit &
/usr/lib/xfce4/notifyd/xfce4-notifyd & 




