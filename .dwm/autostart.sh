#!/bin/bash

# Install List
# xrandr
# sxhkd
# slstatus
# fcitx5
# network-manager-applet
# dunst
# picom
# clipmenu
# kdeconnect-app
# feh

## setting monitor
xrandr --output HDMI-1 --same-as eDP-1
xrandr --output HDMI-1 --primary
## sxhkd
sxhkd &
## slstatus
slstatus &
## fcitx5
fcitx5 &
## nm-applet
nm-applet &
## Dunst
dunst &
## Picom
picom &
## Clipboard (clipmenu)
clipmenud &
## kdeconnect
kdeconnect-app &
## Wallpaper
feh --bg-scale /home/novel2430/Downloads/Beautiful-Anime-Girl-Wallpaper.jpg &
