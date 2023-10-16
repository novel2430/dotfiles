#!/usr/bin/zsh

# Install List
# fcitx5 
# network-manager-applet 
# cliphist 
# dunst
# swayidle
# swaylock-effect
# xdg-desktop-portal
# xdg-desktop-portal-hyprland
# kdeconnect
# waybar
# wbg
# swhkd (git)
# wofi

# Bar
waybar &
# network
killall nm-applet; nm-applet &
# IM
fcitx5 --replace -d &
# Wallpaper
hyprpaper &
# Screen Idle
/home/novel2430/my_script/swayidle.sh &
# xdg portal
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland
systemctl --user stop pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr
systemctl --user restart pipewire
systemctl --user restart wireplumber
systemctl --user restart xdg-desktop-portal
systemctl --user restart xdg-desktop-portal-wlr
# swhkd
systemctl --user start swhkd.service
# Clipboard <cliphist>
wl-paste --watch cliphist store &
# kdeconnect
systemctl --user restart app-org.kde.kdeconnect.daemon@autostart.service
