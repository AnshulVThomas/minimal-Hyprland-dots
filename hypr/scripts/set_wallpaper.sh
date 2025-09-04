#!/usr/bin/env bash

# Pick an image with Zenity
IMAGE=$(zenity --file-selection \
    --title="Select Wallpaper" \
    --file-filter="Image files (jpg, png, jpeg, webp) | *.jpg *.jpeg *.png *.webp")

# Exit if no file selected
[ -z "$IMAGE" ] && exit 0

# Apply the wallpaper dynamically using reload
hyprctl hyprpaper reload ,"$IMAGE"

# Save selected wallpaper for restoring on next login
echo "$IMAGE" > "$HOME/.config/hypr/wallpaper_path"
ffmpeg -i "$IMAGE" -vf "gblur=sigma=10" "$HOME/.config/.wallpaper/wallpaper_blur.png" -y

