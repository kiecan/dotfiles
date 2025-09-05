#!/usr/bin/env bash
# Kill existing bars
polybar-msg cmd quit >/dev/null 2>&1

# # Wait for i3 to be ready (XMONAD/i3 sometimes need a tick)
sleep 0.5

# # Export your wifi iface for the network module (you have wlp6s0)
export WIFI_IFACE="wlp6s0"

# # Start the bar
polybar -q main -c ~/.config/polybar/config.ini &

