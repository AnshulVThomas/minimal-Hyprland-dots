#!/bin/bash

# Check if Waybar is running
if pgrep -x "waybar" > /dev/null; then
    # Waybar is running → kill it
    pkill -x waybar
    echo "{\"text\":\"Waybar: OFF\",\"tooltip\":\"Click to start\",\"class\":\"off\"}"
else
    # Waybar is not running → start it
    nohup waybar >/dev/null 2>&1 &
    echo "{\"text\":\"Waybar: ON\",\"tooltip\":\"Click to hide\",\"class\":\"on\"}"
fi
