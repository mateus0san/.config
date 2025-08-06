#!/bin/bash

# Battery
bat=$(cat /sys/class/power_supply/BAT1/capacity)
bat_status=$(cat /sys/class/power_supply/BAT1/status)

if [ "$bat" -gt 50 ]; then
    bat="<span color='green'> ${bat}% ${bat_status} </span>"
elif [ "$bat" -gt 30 ]; then
    bat="<span color='yellow'> ${bat}% ${bat_status} </span>"
else
    bat="<span color='black' background='red'> ${bat}% ${bat_status} </span>"
fi

# Date
date=$(date)

# Wireplumber
sound=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

echo " ${sound} ${bat} ${date} "
