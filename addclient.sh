#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <client_name>"
  exit 1
fi

CLIENT_NAME="$1"

sudo easy-openvpn-server add-client $CLIENT_NAME
sudo easy-openvpn-server show-client $CLIENT_NAME > profiles/$CLIENT_NAME.ovpn

