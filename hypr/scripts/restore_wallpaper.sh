#!/usr/bin/env bash
# wait for Hyprpaper IPC to be ready
while [ ! -S /run/user/1000/hypr/*/.hyprpaper.sock ]; do
    sleep 0.1
done

# restore last wallpaper
if [ -f ~/.config/hypr/wallpaper_path ]; then
    hyprctl hyprpaper reload ,"$(cat ~/.config/hypr/wallpaper_path)"
fi
