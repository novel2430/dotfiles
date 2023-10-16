#!/usr/bin/bash

# Install List
# wlr-randr 
# fcitx5 
# network-manager-applet 
# cliphist 
# dunst
# swayidle
# swaylock-effect
# wlopm
# xdg-desktop-portal
# xdg-desktop-portal-wlr
# kdeconnect
# waybar
# wbg
# swhkd (git)
# wofi

wlr-randr --output eDP-1 --off
# IM
fcitx5 --replace -d &
# network
nm-applet &
# swhkd
~/my_script/swhkd/swhkd-river-run.sh &
# Clipboard <cliphist>
wl-paste --watch cliphist store &
# dunst
dunst &
# dpms idle
~/my_script/swayidle-river.sh &
# xdg portal
~/my_script/wayland_xdg_portal.sh &
# kdeconnect
/usr/lib/kdeconnectd &
# waybar
killall waybar; waybar -c ~/.config/waybar/config-river -s ~/.config/waybar/style-river.css &
# Wallpaper
wbg /home/novel2430/Downloads/Beautiful-Anime-Girl-Wallpaper.jpg &
