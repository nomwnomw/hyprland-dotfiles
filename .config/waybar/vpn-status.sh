#!/bin/bash
if pgrep -x openvpn >/dev/null; then
    echo '{"text": "󰯄 on", "class": "on"}'
else
    echo '{"text": " off", "class": "off"}'
fi
