#!/bin/sh

# Script aquired from https://github.com/lgaboury/Sway-Waybar-Install-Script/blob/master/.config/waybar/scripts/check_battery.sh 

bat=/sys/class/power_supply/BAT0
CRIT=${1:-15}

FILE=~/.config/waybar/scripts/notified

stat=$(cat $bat/status)
perc=$(cat $bat/capacity)

if [[ $perc -le $CRIT ]] && [[ $stat == "Discharging" ]]; then
  if [[ ! -f "$FILE" ]]; then
    notify-send --urgency=critical --icon=dialog-warning "Battery Low" "Current charge: $perc%"
    touch $FILE
  fi
elif [[ -f "$FILE" ]]; then
  rm $FILE
fi