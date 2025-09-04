#!/bin/sh
swaylock \
  -e \
  -F \
  -l \
  -i ~/.config/.wallpaper/wallpaper_blur.png \
  --indicator \
  --indicator-radius 150 \
  --indicator-thickness 12 \
  --inside-color 00000000 \
  --ring-color ffffff \
  --line-color 00000000 \
  --key-hl-color 00ff00 \
  --text-color ffffff \
  --indicator-idle-visible \
  --clock \
  --timestr "" \
  --datestr "%I:%M %p" \
  --font "JetBrainsMono Nerd Font"

