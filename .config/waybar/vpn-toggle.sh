#!/bin/bash
VPN_DIR="$HOME/VPN"

if pgrep -x openvpn >/dev/null; then
    sudo pkill -x openvpn
else
    CFG=$(find "$VPN_DIR" -name "*.ovpn" | shuf -n 1)
    sudo openvpn --config "$CFG" --daemon --log /tmp/openvpn.log
fi
