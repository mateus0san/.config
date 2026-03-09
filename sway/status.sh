#!/usr/bin/env bash

while true; do
  battery="$(cat /sys/class/power_supply/BAT1/capacity) $(cat /sys/class/power_supply/BAT1/status)"
  date="$(date)"
  volume="$(wpctl get-volume @DEFAULT_SINK@)"

  echo "$volume | $battery | $date"
  sleep 1
done
