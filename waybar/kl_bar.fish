#!/usr/bin/env fish

# Check if Waybar is running
set waybar_pid (pgrep waybar)

if test -n "$waybar_pid"
    kill $waybar_pid
else
    nohup waybar
end
