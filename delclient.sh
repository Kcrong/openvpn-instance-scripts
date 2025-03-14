#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <client_name>"
  exit 1
fi

CLIENT_NAME="$1"

sudo easy-openvpn-server remove-client $CLIENT_NAME
rm profiles/$CLIENT_NAME.ovpn
