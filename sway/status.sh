#!/bin/bash

time=$(date +'%Y-%m-%d %X')
battery=$(cat /sys/class/power_supply/BAT1/capacity)
status_battery=$(cat /sys/class/power_supply/BAT1/status)

echo "$battery% $status_battery | $time"
