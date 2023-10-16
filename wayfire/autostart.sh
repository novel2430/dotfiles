#!/usr/bin/bash

# Install List
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

# IM
fcitx5 --replace -d &
# network
nm-applet &
# swhkd
~/my_script/swhkd/swhkd-wayfire-run.sh &
# Clipboard <cliphist>
wl-paste --watch cliphist store &
# dunst
dunst &
# xdg portal
~/my_script/wayland_xdg_portal.sh &
# kdeconnect
/usr/lib/kdeconnectd &
# waybar
~/my_script/waybar-wayfire.sh &
# Wallpaper
wbg /home/novel2430/Downloads/Beautiful-Anime-Girl-Wallpaper.jpg &
