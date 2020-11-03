#!/bin/sh

echo "Check"

mkdir -p /dev/net
if [ ! -c /dev/net/tun ]; then
    mknod /dev/net/tun c 10 200
fi

echo "test"
exec openvpn --config /etc/openvpn/server.conf