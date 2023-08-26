#!/bin/env bash

# Options for powermenu
logout="󰗼    Logout"
shutdown="    Shutdown"
reboot="󰁯    Reboot"

# Get answer from user via rofi
selected_option=$(echo "$logout
$reboot
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
                  -config "~/.config/rofi/powermenu.rasi"\
                  -font "Cascadia Code 12"\
                  -width "15"\
                  -lines 5\
                  -line-margin 3\
                  -line-padding 10\
                  -scrollbar-width "0" )

# Do something based on selected option
case "$selected_option" in
	$logout) loginctl terminate-user `whoami`;;
	$reboot) loginctl reboot ;;
	$shutdown) loginctl poweroff 
esac