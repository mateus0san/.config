#!/usr/bin/env bash

while true; do
  battery="$(cat /sys/class/power_supply/BAT1/capacity) $(cat /sys/class/power_supply/BAT1/status)"
  date="$(date)"

  echo "$battery | $date"
  sleep 1
done
