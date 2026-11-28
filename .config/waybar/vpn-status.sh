#!/bin/bash
if pgrep -x openvpn >/dev/null; then
    echo '󰯄 on'
else
    echo ' off'
fi
